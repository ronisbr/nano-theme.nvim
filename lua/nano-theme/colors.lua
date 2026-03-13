-- Description -----------------------------------------------------------------------------
--
-- Set the colors of the theme.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local is_light_theme = vim.o.background == "light"

  -- Base ramp.
  local base0 = is_light_theme and "#FAFAF7" or "#262624"
  local base1 = is_light_theme and "#F2F2ED" or "#2E2E2A"
  local base2 = is_light_theme and "#E8E8E2" or "#2E2E2C"
  local base3 = is_light_theme and "#D0D0C8" or "#3A3A38"
  local base4 = is_light_theme and "#A8A8A0" or "#484846"
  local base5 = is_light_theme and "#787870" or "#5C5C5A"
  local base6 = is_light_theme and "#484840" or "#908E88"
  local base7 = is_light_theme and "#1E1E1A" or "#D4D0C8"

  -- NANO semantic colors.
  local nano_foreground_color  = is_light_theme and "#3A3D38" or "#D4D0CA"
  local nano_background_color  = is_light_theme and "#FAFAF7" or "#262624"
  local nano_highlight_color   = is_light_theme and "#F2F2ED" or "#343432"
  local nano_subtle_color      = is_light_theme and "#E8E8E2" or "#484846"
  local nano_veryfaded_color   = is_light_theme and "#C4C4BC" or "#4E4E4C"
  local nano_faded_color       = is_light_theme and "#807E78" or "#83837F"
  local nano_salient_color     = is_light_theme and "#6E4A85" or "#7A9DB8"
  local nano_strong_color      = is_light_theme and "#252520" or "#F0EFEB"
  local nano_popout_color      = is_light_theme and "#E8865A" or "#D08770"
  local nano_critical_color    = is_light_theme and "#E53500" or "#E8C46A"

  -- Accent colors.
  local blue    = is_light_theme and "#2E6FA3" or "#42A5F5"
  local cyan    = is_light_theme and "#1A8F9E" or "#26C6DA"
  local green   = is_light_theme and "#3D8B41" or "#66BB6A"
  local magenta = is_light_theme and "#913AA0" or "#B455C8"
  local red     = is_light_theme and "#C03830" or "#E84040"
  local yellow  = is_light_theme and "#C49A00" or "#E2C12F"

  local colors = {
    -- Base Ramp ---------------------------------------------------------------------------

    base0 = base0,
    base1 = base1,
    base2 = base2,
    base3 = base3,
    base4 = base4,
    base5 = base5,
    base6 = base6,
    base7 = base7,

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

    bg     = nano_background_color,
    fg     = nano_foreground_color,
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

    terminal_color_0  = is_light_theme and base6 or nano_faded_color,
    terminal_color_1  = red,
    terminal_color_2  = green,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = magenta,
    terminal_color_6  = cyan,
    terminal_color_7  = nano_foreground_color,
    terminal_color_8  = is_light_theme and base6 or nano_faded_color,
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
