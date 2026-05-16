-- Orange Variant --------------------------------------------------------------------------

local build_colors = require("nano-theme.colors").build_colors

local M = {}

--- Return the color table for the orange light variant.
---@return table # Color table for the orange light variant.
function M.light()
  local base6   = "#6A5038"
  local red     = "#B82020"
  local green   = "#2E7A38"
  local yellow  = "#887800"
  local blue    = "#1A5888"
  local magenta = "#882878"
  local cyan    = "#0A7070"

  return build_colors({
    base0 = "#FAF6F0",
    base1 = "#F2EAE0",
    base2 = "#E8DECE",
    base3 = "#D4C4A8",
    base4 = "#B8A888",
    base5 = "#9A8868",
    base6 = base6,
    base7 = "#1A1208",

    nano_foreground_color = "#3A2C18",
    nano_background_color = "#FAF6F0",
    nano_highlight_color  = "#F2EAE0",
    nano_subtle_color     = "#E8DECE",
    nano_veryfaded_color  = "#CEC0A8",
    nano_faded_color      = "#8A7058",
    nano_salient_color    = "#A05C18",
    nano_strong_color     = "#1A1208",
    nano_popout_color     = "#2E6890",
    nano_critical_color   = "#C02800",

    terminal_color_0  = base6,
    terminal_color_1  = red,
    terminal_color_2  = green,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = magenta,
    terminal_color_6  = cyan,
    terminal_color_8  = base6,
    terminal_color_9  = red,
    terminal_color_10 = green,
    terminal_color_11 = yellow,
    terminal_color_12 = blue,
    terminal_color_13 = magenta,
    terminal_color_14 = cyan,
  })
end

--- Return the color table for the orange dark variant.
---@return table # Color table for the orange dark variant.
function M.dark()
  local base6   = "#906848"
  local red     = "#E84040"
  local green   = "#60B870"
  local yellow  = "#DCC858"
  local blue    = "#5090C8"
  local magenta = "#C060B0"
  local cyan    = "#30B8C0"

  return build_colors({
    base0 = "#2C2016",
    base1 = "#382A1C",
    base2 = "#443420",
    base3 = "#503E28",
    base4 = "#604830",
    base5 = "#705840",
    base6 = base6,
    base7 = "#F0EAE0",

    nano_foreground_color = "#D4C8B0",
    nano_background_color = "#2C2016",
    nano_highlight_color  = "#382A1C",
    nano_subtle_color     = "#443420",
    nano_veryfaded_color  = "#4E3C28",
    nano_faded_color      = "#9A7C58",
    nano_salient_color    = "#D48A42",
    nano_strong_color     = "#F0EAE0",
    nano_popout_color     = "#6A9AB8",
    nano_critical_color   = "#F25234",

    terminal_color_0  = base6,
    terminal_color_1  = red,
    terminal_color_2  = green,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = magenta,
    terminal_color_6  = cyan,
    terminal_color_8  = base6,
    terminal_color_9  = red,
    terminal_color_10 = green,
    terminal_color_11 = yellow,
    terminal_color_12 = blue,
    terminal_color_13 = magenta,
    terminal_color_14 = cyan,
  })
end

return M
