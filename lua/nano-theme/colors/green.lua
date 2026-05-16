-- Description -----------------------------------------------------------------------------
--
-- Green theme variant with nature-inspired palette with green-tinted backgrounds.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the green light variant.
---@return table # Color table for the green light variant.
function M.light()
  local base6   = "#3A5C3A"
  local red     = "#C03830"
  local green   = "#3D8B41"
  local yellow  = "#8A7800"
  local blue    = "#2E8A7A"
  local lime    = "#5A9A20"
  local cyan    = "#1A9A88"

  return build_colors({
    base0 = "#F6FAF4",
    base1 = "#EDF4EB",
    base2 = "#E0EBE0",
    base3 = "#C4D8C4",
    base4 = "#9AB89A",
    base5 = "#6A8C6A",
    base6 = base6,
    base7 = "#182818",

    nano_foreground_color = "#2A3C2A",
    nano_background_color = "#F6FAF4",
    nano_highlight_color  = "#EDF4EB",
    nano_subtle_color     = "#E0EBE0",
    nano_veryfaded_color  = "#B8D0B8",
    nano_faded_color      = "#5A7C5A",
    nano_salient_color    = "#3A7A48",
    nano_strong_color     = "#182818",
    nano_popout_color     = "#9A6020",
    nano_critical_color   = "#C03020",

    terminal_color_0  = base6,
    terminal_color_1  = red,
    terminal_color_2  = green,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = lime,
    terminal_color_6  = cyan,
    terminal_color_8  = base6,
    terminal_color_9  = red,
    terminal_color_10 = green,
    terminal_color_11 = yellow,
    terminal_color_12 = blue,
    terminal_color_13 = lime,
    terminal_color_14 = cyan,
  })
end

--- Return the color table for the green dark variant.
---@return table # Color table for the green dark variant.
function M.dark()
  local base6   = "#6E8A70"
  local red     = "#E84040"
  local green   = "#6BAE78"
  local yellow  = "#D4B840"
  local blue    = "#5AC8A0"
  local lime    = "#90C860"
  local cyan    = "#38D4B8"

  return build_colors({
    base0 = "#222824",
    base1 = "#2E3830",
    base2 = "#303C32",
    base3 = "#3A4A3C",
    base4 = "#485A48",
    base5 = "#5A7058",
    base6 = base6,
    base7 = "#C8D4C4",

    nano_foreground_color = "#C8D4C4",
    nano_background_color = "#222824",
    nano_highlight_color  = "#2E3830",
    nano_subtle_color     = "#3A4A3C",
    nano_veryfaded_color  = "#4A5C46",
    nano_faded_color      = "#7A9E7C",
    nano_salient_color    = "#6BAE78",
    nano_strong_color     = "#EAF0E8",
    nano_popout_color     = "#C8A86A",
    nano_critical_color   = "#FF6A50",

    terminal_color_0  = base6,
    terminal_color_1  = red,
    terminal_color_2  = green,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = lime,
    terminal_color_6  = cyan,
    terminal_color_8  = base6,
    terminal_color_9  = red,
    terminal_color_10 = green,
    terminal_color_11 = yellow,
    terminal_color_12 = blue,
    terminal_color_13 = lime,
    terminal_color_14 = cyan,
  })
end

return M
