-- Description -----------------------------------------------------------------------------
--
-- Generate the adaptive project logo (screenshots/logo-light.svg and logo-dark.svg) from
-- the default palettes, so the logo colors always match the theme. The README swaps the
-- two files with a <picture> element following the viewer's color scheme. Run it
-- headlessly with:
--
--   nvim --headless -u NONE -c "lua dofile('scripts/logo.lua')"
--
-- or simply `make logo`.
--
-- -----------------------------------------------------------------------------------------

vim.opt.runtimepath:prepend(vim.fn.getcwd())

local variants = require("nano-theme.variants")

local W, H = 520, 150
local FONT = "font-family=\"Inter, 'SF Pro Text', 'Segoe UI', 'DejaVu Sans', sans-serif\""

--- Write one logo file using the palette of the given background mode.
---@param mode "light"|"dark"
local function write_logo(mode)
  local c = variants.get(mode, "default")()

  -- The six N Λ N O faces, in canonical order.
  local faces = {
    c.nano_critical_color,
    c.nano_popout_color,
    c.nano_strong_color,
    c.nano_salient_color,
    c.nano_faded_color,
    c.nano_subtle_color,
  }

  local svg = {}
  local function push(fmt, ...)
    svg[#svg + 1] = select("#", ...) > 0 and string.format(fmt, ...) or fmt
  end

  push('<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d" viewBox="0 0 %d %d" role="img" aria-label="N Λ N O Theme for Neovim">',
    W, H, W, H)

  -- Six face dots, centered above the wordmark.
  local dot_gap = 24
  local dots_x0 = W / 2 - (#faces - 1) * dot_gap / 2
  for i, color in ipairs(faces) do
    push('<circle cx="%d" cy="26" r="5" fill="%s" stroke="rgba(128,128,128,0.25)"/>',
      dots_x0 + (i - 1) * dot_gap, color)
  end

  -- Wordmark: N Λ N O with the Λ in the salient face.
  push('<text x="%d" y="92" %s font-size="56" font-weight="600" letter-spacing="8" text-anchor="middle" fill="%s">N <tspan fill="%s">&#x39B;</tspan> N O</text>',
    W / 2, FONT, c.nano_foreground_color, c.nano_salient_color)

  -- Subline.
  push('<text x="%d" y="126" %s font-size="14" letter-spacing="6" text-anchor="middle" fill="%s">A THEME FOR NEOVIM</text>',
    W / 2, FONT, c.nano_faded_color)

  push('</svg>')

  local path = "screenshots/logo-" .. mode .. ".svg"
  local out = assert(io.open(path, "w"))
  out:write(table.concat(svg, "\n"))
  out:write("\n")
  out:close()

  print("wrote " .. path)
end

write_logo("light")
write_logo("dark")

vim.cmd.quit()
