-- Description -----------------------------------------------------------------------------
--
-- Generate the variant palette panel (screenshots/variants.svg) from the actual palette
-- definitions, so the showcase can never drift from the code. Each variant gets one card
-- with its light and dark palettes side by side, a Julia snippet rendered with the
-- theme's syntax faces, and every color labeled with its role and hex value. Run it
-- headlessly with:
--
--   nvim --headless -u NONE -c "lua dofile('scripts/panel.lua')"
--
-- or simply `make panel`, which also rasterizes the PNG when librsvg or resvg is
-- installed.
--
-- -----------------------------------------------------------------------------------------

vim.opt.runtimepath:prepend(vim.fn.getcwd())

local variants = require("nano-theme.variants")

-- Layout ----------------------------------------------------------------------------------

local HALF_W    = 560
local CARD_W    = 2 * HALF_W
local CARD_GAP  = 18
local MARGIN    = 24
local HEADER_H  = 76
local FOOTER_H  = 44

local PAD        = 20   -- Inner padding of each card half.
local NAME_Y     = 36   -- Baseline of the variant name.
local CODE_Y     = 64   -- Top of the code block.
local LINE_H     = 17   -- Code line height.
local CODE_SIZE  = 12   -- Code font size.
local SW_COLS    = 5    -- Swatches per row.
local SW_GAP     = 6    -- Horizontal gap between swatches.
local SW_LABEL_H = 14   -- Height of the role label above each swatch.
local SW_CHIP_H  = 26   -- Height of the color chip.
local SW_ROW_GAP = 10   -- Vertical gap between swatch rows.

local FONT      = "font-family=\"Inter, 'SF Pro Text', 'Segoe UI', 'DejaVu Sans', sans-serif\""
local FONT_MONO = "font-family=\"'JetBrains Mono', 'SF Mono', Menlo, 'DejaVu Sans Mono', monospace\""

-- Panel chrome (neutral, independent from the variants).
local PANEL_BG    = "#15171B"
local PANEL_TITLE = "#ECECEA"
local PANEL_MUTED = "#9AA0A6"
local PANEL_FAINT = "#6E7175"
local CHIP_STROKE = "rgba(128,128,128,0.30)"

-- Julia Snippet ---------------------------------------------------------------------------
--
-- Each line is a list of { face, text } tokens. Faces map to the same theme faces the
-- real syntax groups use: kw/num/sym/ctor -> salient, fn (functions and macros) ->
-- strong+bold, str/com -> faded, txt -> foreground.

local SNIPPET = {
  { { "kw", "using" }, { "txt", " " }, { "ctor", "SatelliteToolbox" } },
  {},
  { { "com", "# Propagate the ISS orbit for one day." } },
  { { "kw", "function" }, { "txt", " " }, { "fn", "propagate_iss" }, { "txt", "(Δt = " },
    { "num", "86400.0" }, { "txt", ")" } },
  { { "txt", "    jd₀ = " }, { "fn", "date_to_jd" }, { "txt", "(" }, { "num", "2026" },
    { "txt", ", " }, { "num", "8" }, { "txt", ", " }, { "num", "22" }, { "txt", ")" } },
  { { "txt", "    orb = " }, { "ctor", "KeplerianElements" }, { "txt", "(" } },
  { { "txt", "        jd₀, " }, { "num", "6795e3" }, { "txt", ", " }, { "num", "0.0003" },
    { "txt", ", " }, { "fn", "deg2rad" }, { "txt", "(" }, { "num", "51.64" },
    { "txt", "), " }, { "num", "0" }, { "txt", ", " }, { "num", "0" }, { "txt", ", " },
    { "num", "0" } },
  { { "txt", "    )" } },
  { { "txt", "    orbp = Propagators." }, { "fn", "init" }, { "txt", "(" },
    { "ctor", "Val" }, { "txt", "(" }, { "sym", ":J2" }, { "txt", "), orb)" } },
  { { "txt", "    r, v = Propagators." }, { "fn", "propagate!" }, { "txt", "(orbp, Δt)" } },
  { { "txt", "    " }, { "fn", "@info" }, { "txt", " " }, { "str", "\"Propagated!\"" },
    { "txt", " " }, { "fn", "norm" }, { "txt", "(r)" } },
  { { "txt", "    " }, { "kw", "return" }, { "txt", " r, v" } },
  { { "kw", "end" } },
}

-- Swatch roles shown on every half, with the palette key each one reads.
local SWATCHES = {
  { key = "nano_background_color", label = "background" },
  { key = "nano_highlight_color",  label = "highlight" },
  { key = "nano_subtle_color",     label = "subtle" },
  { key = "nano_veryfaded_color",  label = "very faded" },
  { key = "nano_faded_color",      label = "faded" },
  { key = "nano_foreground_color", label = "foreground" },
  { key = "nano_strong_color",     label = "strong" },
  { key = "nano_salient_color",    label = "salient" },
  { key = "nano_popout_color",     label = "popout" },
  { key = "nano_critical_color",   label = "critical" },
}

-- Derived dimensions.
local CODE_H  = #SNIPPET * LINE_H
local SW_ROWS = math.ceil(#SWATCHES / SW_COLS)
local SW_Y    = CODE_Y + CODE_H + 14
local SW_H    = SW_ROWS * (SW_LABEL_H + SW_CHIP_H) + (SW_ROWS - 1) * SW_ROW_GAP
local CARD_H  = SW_Y + SW_H + PAD
local PANEL_W = MARGIN + CARD_W + MARGIN

local svg = {}

local function push(fmt, ...)
  svg[#svg + 1] = select("#", ...) > 0 and string.format(fmt, ...) or fmt
end

local function xml_escape(text)
  return (text:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"))
end

--- Pick a readable text color (near-black or near-white) for a chip background.
local function chip_text_color(hex)
  local r = tonumber(hex:sub(2, 3), 16)
  local g = tonumber(hex:sub(4, 5), 16)
  local b = tonumber(hex:sub(6, 7), 16)
  return (0.299 * r + 0.587 * g + 0.114 * b) >= 140 and "#1A1A1A" or "#F5F5F5"
end

--- Render one card half (a full palette in one background mode) at the given origin.
local function half(x, y, name, mode, c)
  local faces = {
    kw   = { color = c.nano_salient_color },
    num  = { color = c.nano_salient_color },
    sym  = { color = c.nano_salient_color },
    ctor = { color = c.nano_salient_color },
    fn   = { color = c.nano_strong_color, bold = true },
    str  = { color = c.nano_faded_color },
    com  = { color = c.nano_faded_color },
    txt  = { color = c.nano_foreground_color },
  }

  push('<g transform="translate(%d,%d)">', x, y)

  -- Variant name and mode tag.
  push('<text x="%d" y="%d" %s font-size="18" font-weight="600" fill="%s">%s</text>',
    PAD, NAME_Y, FONT, c.nano_strong_color, name)
  push('<text x="%d" y="%d" %s font-size="11" letter-spacing="2" fill="%s" text-anchor="end">%s</text>',
    HALF_W - PAD, NAME_Y - 1, FONT, c.nano_faded_color, mode:upper())

  -- Julia snippet with the theme's syntax faces.
  for i, line in ipairs(SNIPPET) do
    if #line > 0 then
      local spans = {}
      for _, token in ipairs(line) do
        local face = faces[token[1]]
        spans[#spans + 1] = string.format('<tspan fill="%s"%s>%s</tspan>',
          face.color, face.bold and ' font-weight="bold"' or "", xml_escape(token[2]))
      end
      push('<text x="%d" y="%d" %s font-size="%d" xml:space="preserve">%s</text>',
        PAD, CODE_Y + (i - 1) * LINE_H + 12, FONT_MONO, CODE_SIZE, table.concat(spans))
    end
  end

  -- Labeled swatches: role name above, hex value inside the chip.
  local sw_w = (HALF_W - 2 * PAD - (SW_COLS - 1) * SW_GAP) / SW_COLS

  for i, sw in ipairs(SWATCHES) do
    local row = math.floor((i - 1) / SW_COLS)
    local col = (i - 1) % SW_COLS
    local sx  = PAD + col * (sw_w + SW_GAP)
    local sy  = SW_Y + row * (SW_LABEL_H + SW_CHIP_H + SW_ROW_GAP)
    local hex = c[sw.key]

    push('<text x="%d" y="%d" %s font-size="10" fill="%s">%s</text>',
      sx + 1, sy + 10, FONT, c.nano_faded_color, sw.label)
    push('<rect x="%d" y="%d" width="%.1f" height="%d" rx="7" fill="%s" stroke="%s"/>',
      sx, sy + SW_LABEL_H, sw_w, SW_CHIP_H, hex, CHIP_STROKE)
    push('<text x="%.1f" y="%d" %s font-size="10" fill="%s" text-anchor="middle">%s</text>',
      sx + sw_w / 2, sy + SW_LABEL_H + 17, FONT_MONO, chip_text_color(hex), hex)
  end

  push('</g>')
end

-- Header ----------------------------------------------------------------------------------

local PANEL_H = HEADER_H + #variants.names * (CARD_H + CARD_GAP) - CARD_GAP + FOOTER_H

push('<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d" viewBox="0 0 %d %d">',
  PANEL_W, PANEL_H, PANEL_W, PANEL_H)
push('<rect x="0" y="0" width="%d" height="%d" rx="18" fill="%s"/>', PANEL_W, PANEL_H, PANEL_BG)

push('<text x="%d" y="48" %s font-size="24" font-weight="600" fill="%s">N &#x39B; N O Theme &#8212; Variants</text>',
  MARGIN, FONT, PANEL_TITLE)
push('<text x="%d" y="48" %s font-size="13" fill="%s" text-anchor="end">%d variants &#183; light &#38; dark</text>',
  PANEL_W - MARGIN, FONT, PANEL_MUTED, #variants.names)

-- Cards -----------------------------------------------------------------------------------

local y = HEADER_H
for _, name in ipairs(variants.names) do
  local light = variants.get("light", name)()
  local dark  = variants.get("dark", name)()

  -- The two halves share one rounded outline, clipped so the seam stays square.
  push('<clipPath id="card-%s"><rect x="%d" y="%d" width="%d" height="%d" rx="14"/></clipPath>',
    name, MARGIN, y, CARD_W, CARD_H)
  push('<g clip-path="url(#card-%s)">', name)
  push('<rect x="%d" y="%d" width="%d" height="%d" fill="%s"/>',
    MARGIN, y, HALF_W, CARD_H, light.nano_background_color)
  push('<rect x="%d" y="%d" width="%d" height="%d" fill="%s"/>',
    MARGIN + HALF_W, y, HALF_W, CARD_H, dark.nano_background_color)
  push('</g>')
  push('<rect x="%d" y="%d" width="%d" height="%d" rx="14" fill="none" stroke="rgba(128,128,128,0.28)"/>',
    MARGIN, y, CARD_W, CARD_H)

  half(MARGIN, y, name, "light", light)
  half(MARGIN + HALF_W, y, name, "dark", dark)

  y = y + CARD_H + CARD_GAP
end

-- Footer ----------------------------------------------------------------------------------

push('<text x="%d" y="%d" %s font-size="11" fill="%s" text-anchor="end">generated from lua/nano-theme/colors &#183; make panel</text>',
  PANEL_W - MARGIN, PANEL_H - 20, FONT, PANEL_FAINT)
push('</svg>')

-- Write the file --------------------------------------------------------------------------

local out = assert(io.open("screenshots/variants.svg", "w"))
out:write(table.concat(svg, "\n"))
out:write("\n")
out:close()

print("wrote screenshots/variants.svg")
vim.cmd.quit()
