-- Description -----------------------------------------------------------------------------
--
-- Generate the variant palette panel (screenshots/variants.svg) from the actual palette
-- definitions, so the showcase can never drift from the code. Run it headlessly with:
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

local CARD_W    = 468
local CARD_H    = 92
local CARD_GAP  = 16
local ROW_GAP   = 14
local MARGIN    = 24
local HEADER_H  = 96
local FOOTER_H  = 34
local PANEL_W   = MARGIN + CARD_W + CARD_GAP + CARD_W + MARGIN
local PANEL_H   = HEADER_H + #variants.names * (CARD_H + ROW_GAP) - ROW_GAP + FOOTER_H + MARGIN

local FONT = "font-family=\"Inter, 'SF Pro Text', 'Segoe UI', 'DejaVu Sans', sans-serif\""

-- Panel chrome (neutral, independent from the variants).
local PANEL_BG     = "#15171B"
local PANEL_TITLE  = "#ECECEA"
local PANEL_MUTED  = "#9AA0A6"
local PANEL_FAINT  = "#6E7175"
local CHIP_STROKE  = "rgba(128,128,128,0.35)"

local svg = {}

local function push(fmt, ...)
  svg[#svg + 1] = select("#", ...) > 0 and string.format(fmt, ...) or fmt
end

-- Header ----------------------------------------------------------------------------------

push('<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d" viewBox="0 0 %d %d">',
  PANEL_W, PANEL_H, PANEL_W, PANEL_H)
push('<rect x="0" y="0" width="%d" height="%d" rx="18" fill="%s"/>', PANEL_W, PANEL_H, PANEL_BG)

push('<text x="%d" y="46" %s font-size="24" font-weight="600" fill="%s">N &#x39B; N O Theme &#8212; Variants</text>',
  MARGIN, FONT, PANEL_TITLE)
push('<text x="%d" y="46" %s font-size="13" fill="%s" text-anchor="end">%d variants &#183; light &#38; dark</text>',
  PANEL_W - MARGIN, FONT, PANEL_MUTED, #variants.names)

-- Legend: the specimen and the face chips, in the order used on every card.
local legend = {
  { w = 34, label = "fg / highlight" },
  { w = 30, label = "critical" },
  { w = 30, label = "popout" },
  { w = 30, label = "strong" },
  { w = 30, label = "salient" },
  { w = 30, label = "faded" },
  { w = 30, label = "very faded" },
  { w = 30, label = "subtle" },
}

local lx = MARGIN
for i, item in ipairs(legend) do
  push('<rect x="%d" y="62" width="%d" height="10" rx="4" fill="none" stroke="%s"/>', lx, item.w, CHIP_STROKE)
  push('<text x="%d" y="86" %s font-size="10" fill="%s" text-anchor="middle">%s</text>',
    lx + item.w / 2, FONT, PANEL_MUTED, item.label)
  lx = lx + item.w + (i == 1 and 48 or 42)
end

-- Cards -----------------------------------------------------------------------------------

local function card(x, y, name, mode, c)
  push('<g transform="translate(%d,%d)">', x, y)
  push('<rect x="0" y="0" width="%d" height="%d" rx="12" fill="%s" stroke="rgba(128,128,128,0.28)"/>',
    CARD_W, CARD_H, c.nano_background_color)

  -- Variant name and mode tag.
  push('<text x="20" y="34" %s font-size="17" font-weight="600" fill="%s">%s</text>',
    FONT, c.nano_strong_color, name)
  push('<text x="%d" y="33" %s font-size="11" letter-spacing="2" fill="%s" text-anchor="end">%s</text>',
    CARD_W - 20, FONT, c.nano_faded_color, mode:upper())

  -- Specimen: foreground text on the highlight surface.
  push('<rect x="20" y="46" width="34" height="30" rx="8" fill="%s"/>', c.nano_highlight_color)
  push('<text x="37" y="67" %s font-size="14" font-weight="500" fill="%s" text-anchor="middle">Aa</text>',
    FONT, c.nano_foreground_color)

  -- Face chips in the canonical N Λ N O order.
  local faces = {
    c.nano_critical_color,
    c.nano_popout_color,
    c.nano_strong_color,
    c.nano_salient_color,
    c.nano_faded_color,
    c.nano_veryfaded_color,
    c.nano_subtle_color,
  }

  local cx = 68
  for _, color in ipairs(faces) do
    push('<rect x="%d" y="46" width="30" height="30" rx="8" fill="%s" stroke="%s"/>', cx, color, CHIP_STROKE)
    cx = cx + 38
  end

  push('</g>')
end

local y = HEADER_H + 10
for _, name in ipairs(variants.names) do
  card(MARGIN, y, name, "light", variants.get("light", name)())
  card(MARGIN + CARD_W + CARD_GAP, y, name, "dark", variants.get("dark", name)())
  y = y + CARD_H + ROW_GAP
end

-- Footer ----------------------------------------------------------------------------------

push('<text x="%d" y="%d" %s font-size="11" fill="%s" text-anchor="end">generated from lua/nano-theme/colors &#183; make panel</text>',
  PANEL_W - MARGIN, PANEL_H - 22, FONT, PANEL_FAINT)
push('</svg>')

-- Write the file --------------------------------------------------------------------------

local out = assert(io.open("screenshots/variants.svg", "w"))
out:write(table.concat(svg, "\n"))
out:write("\n")
out:close()

print("wrote screenshots/variants.svg")
vim.cmd.quit()
