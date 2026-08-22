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
  return build_colors({
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

    ansi = {
      black   = "#484840",
      red     = "#B82020",
      green   = "#2E7A38",
      yellow  = "#A88000",
      blue    = "#1E5490",
      magenta = "#7A2888",
      cyan    = "#0E8090",
    },
  })
end

--- Return the color table for the ink dark variant.
---@return table # Color table for the ink dark variant.
function M.dark()
  return build_colors({
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

    ansi = {
      black   = "#707070",
      red     = "#E84040",
      green   = "#50B060",
      yellow  = "#D4B030",
      blue    = "#5090D0",
      magenta = "#A050C0",
      cyan    = "#20B0C8",
    },
  })
end

return M
