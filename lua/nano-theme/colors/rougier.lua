-- Description -----------------------------------------------------------------------------
--
-- Rougier's theme variant — the original variant of the NANO Emacs theme, closest to
-- the original N Λ N O design.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the Rougier's light variant.
---@return table # Color table for the Rougier's light variant.
function M.light()
  local nano_foreground_color = "#37474F"  -- Blue Grey / L800

  return build_colors({
    nano_foreground_color = nano_foreground_color,
    nano_background_color = "#FFFFFF",
    nano_highlight_color  = "#FAFAFA",
    nano_subtle_color     = "#ECEFF1",
    nano_veryfaded_color  = "#CFD8DC",
    nano_faded_color      = "#90A4AE",  -- Blue Grey / L300
    nano_salient_color    = "#673AB7",  -- Deep Purple / L500
    nano_strong_color     = "#263238",  -- Blue Grey / L900
    nano_popout_color     = "#FFAB91",  -- Deep Orange / L200
    nano_critical_color   = "#FF6F00",  -- Amber / L900

    ansi = {
      black   = "#546E7A",  -- Blue Grey / L600
      red     = "#B71C1C",  -- Material Red / L900
      green   = "#2E7D32",  -- Material Green / L800
      yellow  = "#F9A825",  -- Material Amber / L800
      blue    = "#1565C0",  -- Material Blue / L800
      magenta = "#6A1B9A",  -- Material Purple / L800
      cyan    = "#00838F",  -- Material Cyan / L800
    },
  })
end

--- Return the color table for the Rougier's dark variant.
---@return table # Color table for the Rougier's dark variant.
function M.dark()
  local nano_foreground_color = "#ECEFF4"  -- Nord Snow Storm 3 / nord6

  return build_colors({
    nano_foreground_color = nano_foreground_color,
    nano_background_color = "#2E3440",  -- nord0
    nano_highlight_color  = "#3B4252",  -- nord1
    nano_subtle_color     = "#434C5E",  -- nord2
    nano_veryfaded_color  = "#4C566A",  -- nord3
    nano_faded_color      = "#677691",
    nano_salient_color    = "#81A1C1",  -- Nord Frost / nord9
    nano_strong_color     = "#ECEFF4",  -- nord6
    nano_popout_color     = "#D08770",  -- Nord Aurora / nord12
    nano_critical_color   = "#EBCB8B",  -- Nord Aurora / nord13

    ansi = {
      black   = "#7B88A1",  -- Nord between Polar Night and Snow Storm
      red     = "#BF616A",  -- Nord Aurora / nord11
      green   = "#A3BE8C",  -- Nord Aurora / nord14
      yellow  = "#EBCB8B",  -- Nord Aurora / nord13
      blue    = "#81A1C1",  -- Nord Frost  / nord9
      magenta = "#B48EAD",  -- Nord Aurora / nord15
      cyan    = "#88C0D0",  -- Nord Frost  / nord8
    },
  })
end

return M
