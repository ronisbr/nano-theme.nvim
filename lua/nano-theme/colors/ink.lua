-- Description -----------------------------------------------------------------------------
--
-- Ink theme variant with high-contrast near-pure black and white backgrounds.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the ink light variant.
---@return table # Color table for the ink light variant.
function M.light()
  local base6   = "#484840"
  local red     = "#B82020"
  local green   = "#2E7A38"
  local yellow  = "#A88000"
  local blue    = "#1E5490"
  local magenta = "#7A2888"
  local cyan    = "#0E8090"

  return build_colors({
    base0 = "#F8F8F4",
    base1 = "#F0F0EC",
    base2 = "#E4E4DE",
    base3 = "#C8C8C0",
    base4 = "#A0A098",
    base5 = "#707070",
    base6 = base6,
    base7 = "#141414",

    nano_foreground_color = "#1A1A18",
    nano_background_color = "#F8F8F4",
    nano_highlight_color  = "#EBEBE6",
    nano_subtle_color     = "#D0D0C8",
    nano_veryfaded_color  = "#C0C0B8",
    nano_faded_color      = "#6E6E6A",
    nano_salient_color    = "#A06020",
    nano_strong_color     = "#141414",
    nano_popout_color     = "#2E5E8A",
    nano_critical_color   = "#B82010",

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

--- Return the color table for the ink dark variant.
---@return table # Color table for the ink dark variant.
function M.dark()
  local base6   = "#707070"
  local red     = "#E84040"
  local green   = "#50B060"
  local yellow  = "#D4B030"
  local blue    = "#5090D0"
  local magenta = "#A050C0"
  local cyan    = "#20B0C8"

  return build_colors({
    base0 = "#0E0E10",
    base1 = "#1A1A1C",
    base2 = "#242426",
    base3 = "#303032",
    base4 = "#484848",
    base5 = "#585858",
    base6 = base6,
    base7 = "#F0F0EC",

    nano_foreground_color = "#C8C8C0",
    nano_background_color = "#0E0E10",
    nano_highlight_color  = "#222224",
    nano_subtle_color     = "#303032",
    nano_veryfaded_color  = "#3C3C3E",
    nano_faded_color      = "#707070",
    nano_salient_color    = "#D4924A",
    nano_strong_color     = "#F0F0EC",
    nano_popout_color     = "#78AACC",
    nano_critical_color   = "#FF6648",

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
