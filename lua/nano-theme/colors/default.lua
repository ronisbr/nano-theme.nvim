-- Description -----------------------------------------------------------------------------
--
-- Default theme variant with warm, slightly tinted palette faithful to the original
-- N Λ N O Emacs theme.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors").build_colors

local M = {}

--- Return the color table for the default light variant.
---@return table # Color table for the default light variant.
function M.light()
  local base6   = "#484840"
  local red     = "#C03830"
  local green   = "#3D8B41"
  local yellow  = "#C49A00"
  local blue    = "#2E6FA3"
  local magenta = "#913AA0"
  local cyan    = "#1A8F9E"

  return build_colors({
    base0 = "#FAFAF7",
    base1 = "#F2F2ED",
    base2 = "#E8E8E2",
    base3 = "#D0D0C8",
    base4 = "#A8A8A0",
    base5 = "#787870",
    base6 = base6,
    base7 = "#1E1E1A",

    nano_foreground_color = "#3A3D38",
    nano_background_color = "#FAFAF7",
    nano_highlight_color  = "#F2F2ED",
    nano_subtle_color     = "#E8E8E2",
    nano_veryfaded_color  = "#C4C4BC",
    nano_faded_color      = "#6E6C66",
    nano_salient_color    = "#6E4A85",
    nano_strong_color     = "#252520",
    nano_popout_color     = "#F09878",
    nano_critical_color   = "#E53500",

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

--- Return the color table for the default dark variant.
---@return table # Color table for the default dark variant.
function M.dark()
  local base6   = "#908E88"
  local red     = "#E84040"
  local green   = "#66BB6A"
  local yellow  = "#E2C12F"
  local blue    = "#42A5F5"
  local magenta = "#B455C8"
  local cyan    = "#26C6DA"

  return build_colors({
    base0 = "#262624",
    base1 = "#2E2E2A",
    base2 = "#2E2E2C",
    base3 = "#3A3A38",
    base4 = "#484846",
    base5 = "#5C5C5A",
    base6 = base6,
    base7 = "#D4D0C8",

    nano_foreground_color = "#D4D0CA",
    nano_background_color = "#262624",
    nano_highlight_color  = "#343432",
    nano_subtle_color     = "#484846",
    nano_veryfaded_color  = "#4E4E4C",
    nano_faded_color      = "#969690",
    nano_salient_color    = "#7A9DB8",
    nano_strong_color     = "#F0EFEB",
    nano_popout_color     = "#D08770",
    nano_critical_color   = "#E8C46A",

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
