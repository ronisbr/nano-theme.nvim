-- Description -----------------------------------------------------------------------------
--
-- Set the colors of the theme.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local is_light_theme = vim.o.background == "light"

  -- Base ramp.
  local base0 = is_light_theme and "#FAFAF7" or "#191C25"
  local base1 = is_light_theme and "#F2F2ED" or "#242832"
  local base2 = is_light_theme and "#E8E8E2" or "#2C333F"
  local base3 = is_light_theme and "#D0D0C8" or "#373E4C"
  local base4 = is_light_theme and "#A8A8A0" or "#42423C"
  local base5 = is_light_theme and "#787870" or "#4C566A"
  local base6 = is_light_theme and "#484840" or "#9099AB"
  local base7 = is_light_theme and "#1E1E1A" or "#D8DEE9"

  -- NANO semantic colors.
  local nano_foreground_color  = is_light_theme and "#3A3D38" or "#D4D0CA"
  local nano_background_color  = is_light_theme and "#FAFAF7" or "#262624"
  local nano_highlight_color   = is_light_theme and "#F2F2ED" or "#363630"
  local nano_subtle_color      = is_light_theme and "#E8E8E2" or "#42423C"
  local nano_faded_color       = is_light_theme and "#9A9E9C" or "#767670"
  local nano_veryfaded_color   = is_light_theme and "#C4C4BC" or "#505048"
  local nano_salient_color     = is_light_theme and "#6B5EA8" or "#7D9AB5"
  local nano_strong_color      = is_light_theme and "#252520" or "#F0EFEB"
  local nano_popout_color      = is_light_theme and "#FFAB91" or "#D08770"
  local nano_critical_color    = is_light_theme and "#FF6F00" or "#EBCB8B"

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
    nano_veryfaded_color  = nano_veryfaded_color,
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
    nano_veryfaded  = { fg = nano_veryfaded_color },
    nano_salient    = { fg = nano_salient_color },
    nano_strong     = { fg = nano_strong_color, bold = true },
    nano_popout     = { fg = nano_popout_color },
    nano_critical   = { fg = nano_critical_color },

    -- Terminal Colors ---------------------------------------------------------------------

    terminal_color_0  = nano_faded_color,
    terminal_color_1  = red,
    terminal_color_2  = green,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = magenta,
    terminal_color_6  = cyan,
    terminal_color_7  = nano_foreground_color,
    terminal_color_8  = nano_faded_color,
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
