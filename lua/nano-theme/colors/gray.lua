-- Description -----------------------------------------------------------------------------
--
-- Gray theme variant with fully desaturated, neutral gray palette.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the gray light variant.
---@return table # Color table for the gray light variant.
function M.light()
  local base6   = "#606060"
  local red     = "#B82020"
  local green   = "#2E7A38"
  local yellow  = "#A88000"
  local blue    = "#1E5490"
  local magenta = "#7A2888"
  local cyan    = "#0E8090"

  return build_colors({
    base0 = "#F6F6F4",
    base1 = "#EEEEEC",
    base2 = "#E2E2E0",
    base3 = "#C8C8C8",
    base4 = "#A4A4A4",
    base5 = "#787878",
    base6 = base6,
    base7 = "#101010",

    nano_foreground_color = "#1C1C1C",
    nano_background_color = "#F6F6F4",
    nano_highlight_color  = "#EEEEEC",
    nano_subtle_color     = "#E2E2E0",
    nano_veryfaded_color  = "#C4C4C4",
    nano_faded_color      = "#727272",
    nano_salient_color    = "#4A5060",
    nano_strong_color     = "#101010",
    nano_popout_color     = "#6A5A50",
    nano_critical_color   = "#CC2800",

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

--- Return the color table for the gray dark variant.
---@return table # Color table for the gray dark variant.
function M.dark()
  local base6   = "#686868"
  local red     = "#E84040"
  local green   = "#50B060"
  local yellow  = "#D4B030"
  local blue    = "#5090D0"
  local magenta = "#A050C0"
  local cyan    = "#20B0C8"

  return build_colors({
    base0 = "#1C1C1C",
    base1 = "#262626",
    base2 = "#303030",
    base3 = "#3C3C3C",
    base4 = "#505050",
    base5 = "#585858",
    base6 = base6,
    base7 = "#ECECEC",

    nano_foreground_color = "#C0C0C0",
    nano_background_color = "#1C1C1C",
    nano_highlight_color  = "#262626",
    nano_subtle_color     = "#303030",
    nano_veryfaded_color  = "#383838",
    nano_faded_color      = "#808080",
    nano_salient_color    = "#8A90A0",
    nano_strong_color     = "#ECECEC",
    nano_popout_color     = "#B0A090",
    nano_critical_color   = "#F25050",

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
