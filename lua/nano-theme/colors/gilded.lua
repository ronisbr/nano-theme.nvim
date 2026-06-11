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
  local base6   = "#4E4F48"
  local red     = "#B8331E"
  local green   = "#3E7A44"
  local yellow  = "#996414"
  local blue    = "#38608A"
  local magenta = "#8A4A78"
  local cyan    = "#387077"

  return build_colors({
    base0 = "#F6F3EC",
    base1 = "#EFE9DC",
    base2 = "#E3DCC9",
    base3 = "#D2C9B2",
    base4 = "#B0A890",
    base5 = "#847E6E",
    base6 = base6,
    base7 = "#14161A",

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

--- Return the color table for the gilded dark variant.
---@return table # Color table for the gilded dark variant.
function M.dark()
  local base6   = "#828A96"
  local red     = "#E0604E"
  local green   = "#91B07A"
  local yellow  = "#D8A24A"
  local blue    = "#7193B8"
  local magenta = "#B08CB0"
  local cyan    = "#6FA8B0"

  return build_colors({
    base0 = "#0D1014",
    base1 = "#141921",
    base2 = "#1A212B",
    base3 = "#262E3A",
    base4 = "#323C4A",
    base5 = "#46525F",
    base6 = base6,
    base7 = "#E9E6DF",

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
