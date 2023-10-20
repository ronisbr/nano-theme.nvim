-- Description -----------------------------------------------------------------------------
--
-- Set the colors of the theme.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local  base0 = "#FFFFFF"
  local  base1 = "#E0E0E0"
  local  base2 = "#C1C1C1"
  local  base3 = "#A3A3A3"
  local  base4 = "#848484"
  local  base5 = "#666666"
  local  base6 = "#474747"
  local  base7 = "#282828"

  local nano_foreground_color = "#37474F"
  local nano_background_color = "#FFFFFF"
  local nano_highlight_color  = "#FAFAFA"
  local nano_subtle_color     = "#ECEFF1"
  local nano_faded_color      = "#90A4AE"
  local nano_salient_color    = "#673AB7"
  local nano_strong_color     = "#263238"
  local nano_popout_color     = "#FFAB91"
  local nano_critical_color   = "#FF6F00"

  local blue    = "#42A5F5"
  local cyan    = "#26C6DA"
  local green   = "#66BB6A"
  local magenta = "#AB47BC"
  local red     = "#EF5350"
  local yellow  = "#E2C12F"

  local colors = {
    -- Colors ------------------------------------------------------------------------------

    nano_foreground_color = nano_foreground_color,
    nano_background_color = nano_background_color,
    nano_highlight_color  = nano_highlight_color,
    nano_subtle_color     = nano_subtle_color,
    nano_faded_color      = nano_faded_color,
    nano_salient_color    = nano_salient_color,
    nano_strong_color     = nano_strong_color,
    nano_popout_color     = nano_popout_color,
    nano_critical_color   = nano_critical_color,

    bg = nano_background_color,
    fg = nano_foreground_color,

    bg_alt = nano_highlight_color,
    fg_alt = nano_foreground_color,

    -- Highlight Decoration ----------------------------------------------------------------

    nano_foreground = { fg = nano_foreground_color },
    nano_background = { fg = nano_background_color },
    nano_highlight  = { fg = nano_highlight_color },
    nano_subtle     = { fg = nano_subtle_color },
    nano_faded      = { fg = nano_faded_color },
    nano_salient    = { fg = nano_salient_color },
    nano_strong     = { fg = nano_strong_color, bold = true },
    nano_popout     = { fg = nano_popout_color },
    nano_critical   = { fg = nano_critical_color },

    -- Terminal Colors ---------------------------------------------------------------------

    terminal_color_0  = nano_background_color,
    terminal_color_1  = red,
    terminal_color_2  = green,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = magenta,
    terminal_color_6  = cyan,
    terminal_color_7  = nano_foreground_color,
    terminal_color_8  = nano_background_color,
    terminal_color_9  = red,
    terminal_color_10 = green,
    terminal_color_11 = yellow,
    terminal_color_12 = blue,
    terminal_color_13 = magenta,
    terminal_color_14 = cyan,
    terminal_color_15 = nano_foreground_color,
  }

  return colors
end

return M
