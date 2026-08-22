-- Description -----------------------------------------------------------------------------
--
-- Blue theme variant with cool, steel-blue tinted palette.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the blue light variant.
---@return table # Color table for the blue light variant.
function M.light()
  return build_colors({
    nano_foreground_color = "#243040",
    nano_background_color = "#F4F6FA",
    nano_highlight_color  = "#E5EAF2",
    nano_subtle_color     = "#DDE4EE",
    nano_veryfaded_color  = "#B0C0D4",
    nano_faded_color      = "#5A7898",
    nano_salient_color    = "#1E6AA8",
    nano_strong_color     = "#101C2C",
    nano_popout_color     = "#A07000",
    nano_critical_color   = "#C02818",

    ansi = {
      black   = "#384858",
      red     = "#C02818",
      green   = "#0F7A60",  -- ice
      yellow  = "#A07000",
      blue    = "#1E6AA8",
      magenta = "#4840A8",  -- indigo
      cyan    = "#1A8AA8",
    },
  })
end

--- Return the color table for the blue dark variant.
---@return table # Color table for the blue dark variant.
function M.dark()
  return build_colors({
    nano_foreground_color = "#C4CED8",
    nano_background_color = "#1E2430",
    nano_highlight_color  = "#28303E",
    nano_subtle_color     = "#333E50",
    nano_veryfaded_color  = "#3C4E62",
    nano_faded_color      = "#6A8AAA",
    nano_salient_color    = "#5AA0D0",
    nano_strong_color     = "#E8EEF4",
    nano_popout_color     = "#E8A838",
    nano_critical_color   = "#F06040",

    ansi = {
      black   = "#5A7A98",
      red     = "#F06040",
      green   = "#38C8E8",  -- ice
      yellow  = "#E8A838",
      blue    = "#5AA0D0",
      magenta = "#9E8EE0",  -- indigo
      cyan    = "#4AB8D8",
    },
  })
end

return M
