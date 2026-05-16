-- Rougier's Variant -----------------------------------------------------------------------
--
-- The original variant of the NANO theme.
--

local build_colors = require("nano-theme.colors").build_colors

local M = {}

--- Return the color table for the Rougier's light variant.
---@return table # Color table for the Rougier's light variant.
function M.light()
  local base6   = "#546E7A"  -- Blue Grey / L600
  local red     = "#B71C1C"  -- Material Red / L900
  local green   = "#2E7D32"  -- Material Green / L800
  local yellow  = "#F9A825"  -- Material Amber / L800
  local blue    = "#1565C0"  -- Material Blue / L800
  local magenta = "#6A1B9A"  -- Material Purple / L800
  local cyan    = "#00838F"  -- Material Cyan / L800
  local nano_foreground_color = "#37474F"  -- Blue Grey / L800

  return build_colors({
    base0 = "#FFFFFF",  -- White
    base1 = "#FAFAFA",  -- Very Light Grey
    base2 = "#ECEFF1",  -- Blue Grey / L50
    base3 = "#CFD8DC",  -- Blue Grey / L100
    base4 = "#B0BEC5",  -- Blue Grey / L200
    base5 = "#90A4AE",  -- Blue Grey / L300
    base6 = base6,
    base7 = "#263238",  -- Blue Grey / L900

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

--- Return the color table for the Rougier's dark variant.
---@return table # Color table for the Rougier's dark variant.
function M.dark()
  local base6   = "#7B88A1"  -- Nord between Polar Night and Snow Storm
  local red     = "#BF616A"  -- Nord Aurora / nord11
  local green   = "#A3BE8C"  -- Nord Aurora / nord14
  local yellow  = "#EBCB8B"  -- Nord Aurora / nord13
  local blue    = "#81A1C1"  -- Nord Frost  / nord9
  local magenta = "#B48EAD"  -- Nord Aurora / nord15
  local cyan    = "#88C0D0"  -- Nord Frost  / nord8
  local nano_foreground_color = "#ECEFF4"  -- Nord Snow Storm 3 / nord6

  return build_colors({
    base0 = "#2E3440",  -- Nord Polar Night 0 / nord0
    base1 = "#3B4252",  -- Nord Polar Night 1 / nord1
    base2 = "#434C5E",  -- Nord Polar Night 2 / nord2
    base3 = "#4C566A",  -- Nord Polar Night 3 / nord3
    base4 = "#D8DEE9",  -- Nord Snow Storm 1  / nord4
    base5 = "#E5E9F0",  -- Nord Snow Storm 2  / nord5
    base6 = base6,
    base7 = "#ECEFF4",  -- Nord Snow Storm 3  / nord6

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
