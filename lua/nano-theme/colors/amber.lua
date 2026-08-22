-- Description -----------------------------------------------------------------------------
--
-- Amber theme variant inspired by phosphor CRT monitors — warm parchment background
-- with deep amber ink in light mode, and very dark background with warm golden-amber
-- glowing text in dark mode.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the amber light variant.
---@return table # Color table for the amber light variant.
function M.light()
  return build_colors({
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

    ansi = {
      black   = "#7A5000",
      red     = "#A83000",
      green   = "#4A7000",
      yellow  = "#907800",
      blue    = "#1E4880",
      magenta = "#882860",
      cyan    = "#0E7068",
    },
  })
end

--- Return the color table for the amber dark variant.
---@return table # Color table for the amber dark variant.
function M.dark()
  return build_colors({
    nano_foreground_color = "#C89030",
    nano_background_color = "#0C0800",
    nano_highlight_color  = "#1E1604",
    nano_subtle_color     = "#302400",
    nano_veryfaded_color  = "#3A2C00",
    nano_faded_color      = "#786010",
    nano_salient_color    = "#F0C030",
    nano_strong_color     = "#FFD060",
    nano_popout_color     = "#E06830",
    nano_critical_color   = "#FF5030",

    ansi = {
      black   = "#9A7010",
      red     = "#C83020",
      green   = "#A0A010",
      yellow  = "#E8C040",
      blue    = "#3888A8",
      magenta = "#B04820",
      cyan    = "#60A880",
    },
  })
end

return M
