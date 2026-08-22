-- Description -----------------------------------------------------------------------------
--
-- Gilded theme variant based on an ink / paper / gold palette — deep blue-black ink
-- background with warm paper text and gilded gold salient in dark mode, and a warm
-- paper background with dark ink text and deep gold salient in light mode. A muted
-- teal provides the secondary (popout) accent in both modes.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the gilded light variant.
---@return table # Color table for the gilded light variant.
function M.light()
  return build_colors({
    nano_foreground_color = "#1B1D22",
    nano_background_color = "#F6F3EC",
    nano_highlight_color  = "#EFE9DC",
    nano_subtle_color     = "#E3DCC9",
    nano_veryfaded_color  = "#CBC2AB",
    nano_faded_color      = "#686C73",
    nano_salient_color    = "#996414",
    nano_strong_color     = "#0D1014",
    nano_popout_color     = "#387077",
    nano_critical_color   = "#B8331E",

    ansi = {
      black   = "#4E4F48",
      red     = "#B8331E",
      green   = "#3E7A44",
      yellow  = "#996414",
      blue    = "#38608A",
      magenta = "#8A4A78",
      cyan    = "#387077",
    },
  })
end

--- Return the color table for the gilded dark variant.
---@return table # Color table for the gilded dark variant.
function M.dark()
  return build_colors({
    nano_foreground_color = "#D8D5CD",
    nano_background_color = "#0D1014",
    nano_highlight_color  = "#181F29",
    nano_subtle_color     = "#262E3A",
    nano_veryfaded_color  = "#2E3744",
    nano_faded_color      = "#828A96",
    nano_salient_color    = "#D8A24A",
    nano_strong_color     = "#E9E6DF",
    nano_popout_color     = "#69A0A8",
    nano_critical_color   = "#FF7058",

    ansi = {
      black   = "#828A96",
      red     = "#E0604E",
      green   = "#91B07A",
      yellow  = "#D8A24A",
      blue    = "#7193B8",
      magenta = "#B08CB0",
      cyan    = "#6FA8B0",
    },
  })
end

return M
