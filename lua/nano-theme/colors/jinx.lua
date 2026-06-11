-- Description -----------------------------------------------------------------------------
--
-- Jinx theme variant inspired by Jinx from Arcane — magenta-pink salient (her hair)
-- paired with Hextech neon-blue strong, and a distinct teal-cyan popout. Light mode
-- features a near-white background with barely perceptible lavender tint. Dark mode
-- features a near-black background with barely perceptible violet tint and electric
-- bright colors.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the Jinx light variant.
---@return table # Color table for the Jinx light variant.
function M.light()
  local base6   = "#4A4258"
  local red     = "#B82530"
  local green   = "#2E7A56"
  local yellow  = "#9A6A10"
  local blue    = "#1A6FB8"
  local magenta = "#A8228A"
  local cyan    = "#0E7488"

  return build_colors({
    base0 = "#FAF8F8",
    base1 = "#F1EEED",
    base2 = "#E6E1E0",
    base3 = "#D0C9C8",
    base4 = "#A39DAE",
    base5 = "#72697E",
    base6 = base6,
    base7 = "#181222",

    nano_foreground_color = "#1F1A28",
    nano_background_color = "#FAF8F8",
    nano_highlight_color  = "#F1EEED",
    nano_subtle_color     = "#E6E1E0",
    nano_veryfaded_color  = "#CBC4C3",
    nano_faded_color      = "#6E687C",
    nano_salient_color    = "#A8228A",
    nano_strong_color     = "#0B54A8",
    nano_popout_color     = "#0E7488",
    nano_critical_color   = "#B82530",

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

--- Return the color table for the Jinx dark variant.
---@return table # Color table for the Jinx dark variant.
function M.dark()
  local base6   = "#786E98"
  local red     = "#FF5530"
  local green   = "#3FC080"
  local yellow  = "#E8B848"
  local blue    = "#5AA8FF"
  local magenta = "#FF1A8E"
  local cyan    = "#2BE0D8"

  return build_colors({
    base0 = "#0C0A1A",
    base1 = "#161222",
    base2 = "#1E1A30",
    base3 = "#2A2640",
    base4 = "#3A3454",
    base5 = "#544C70",
    base6 = base6,
    base7 = "#E4DEF0",

    nano_foreground_color = "#C8C0DC",
    nano_background_color = "#0C0A1A",
    nano_highlight_color  = "#1C1830",
    nano_subtle_color     = "#2A2640",
    nano_veryfaded_color  = "#2E2848",
    nano_faded_color      = "#867EA8",
    nano_salient_color    = "#FF1A8E",
    nano_strong_color     = "#1FB6FF",
    nano_popout_color     = "#2BE0D8",
    nano_critical_color   = "#FF5530",

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
