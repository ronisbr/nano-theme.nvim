-- Amber Variant ---------------------------------------------------------------------------
--
-- Inspired by the "positive image" of an amber phosphor CRT monitor — warm parchment
-- background with deep amber ink, and the classic amber phosphor CRT monitor with very
-- dark background and warm golden-amber glowing text.
--

local build_colors = require("nano-theme.colors").build_colors

local M = {}

--- Return the color table for the amber light variant.
---@return table # Color table for the amber light variant.
function M.light()
  local base6   = "#7A5000"
  local red     = "#A83000"
  local green   = "#4A7000"
  local yellow  = "#907800"
  local blue    = "#1E4880"
  local magenta = "#882860"
  local cyan    = "#0E7068"

  return build_colors({
    base0 = "#FDF8E0",
    base1 = "#F5ECBE",
    base2 = "#E8DCA0",
    base3 = "#D0C078",
    base4 = "#B09840",
    base5 = "#886820",
    base6 = base6,
    base7 = "#1A0C00",

    nano_foreground_color = "#2C1800",
    nano_background_color = "#FDF8E0",
    nano_highlight_color  = "#F5ECBE",
    nano_subtle_color     = "#E8DCA0",
    nano_veryfaded_color  = "#C8B870",
    nano_faded_color      = "#806020",
    nano_salient_color    = "#A06010",
    nano_strong_color     = "#1A0C00",
    nano_popout_color     = "#1C4070",
    nano_critical_color   = "#B82000",

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

--- Return the color table for the amber dark variant.
---@return table # Color table for the amber dark variant.
function M.dark()
  local base6   = "#9A7010"
  local red     = "#C83020"
  local green   = "#A0A010"
  local yellow  = "#E8C040"
  local blue    = "#3888A8"
  local magenta = "#B04820"
  local cyan    = "#60A880"

  return build_colors({
    base0 = "#0C0800",
    base1 = "#181000",
    base2 = "#221800",
    base3 = "#302400",
    base4 = "#402E00",
    base5 = "#5A4000",
    base6 = base6,
    base7 = "#FFD060",

    nano_foreground_color = "#C89030",
    nano_background_color = "#0C0800",
    nano_highlight_color  = "#181000",
    nano_subtle_color     = "#302400",
    nano_veryfaded_color  = "#3A2C00",
    nano_faded_color      = "#786010",
    nano_salient_color    = "#F0C030",
    nano_strong_color     = "#FFD060",
    nano_popout_color     = "#E06830",
    nano_critical_color   = "#FF5030",

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
