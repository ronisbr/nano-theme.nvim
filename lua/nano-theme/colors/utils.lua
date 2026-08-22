-- Description -----------------------------------------------------------------------------
--
-- Utility functions for theme color building.
--
-- -----------------------------------------------------------------------------------------

local M = {}

--- Build the full color table from the raw color values.
---@param raw table Table with the nano semantic colors and an `ansi` table providing the
---                 black, red, green, yellow, blue, magenta, and cyan terminal colors.
---                 Bright terminal colors mirror the normal ones, and white follows the
---                 foreground color.
---@return table # Color table with named semantic colors, highlight decorations, and
---                terminal colors.
function M.build_colors(raw)
  return {
    -- Colors ------------------------------------------------------------------------------

    nano_foreground_color = raw.nano_foreground_color,
    nano_background_color = raw.nano_background_color,
    nano_highlight_color  = raw.nano_highlight_color,
    nano_subtle_color     = raw.nano_subtle_color,
    nano_faded_color      = raw.nano_faded_color,
    nano_veryfaded_color  = raw.nano_veryfaded_color,
    nano_salient_color    = raw.nano_salient_color,
    nano_strong_color     = raw.nano_strong_color,
    nano_popout_color     = raw.nano_popout_color,
    nano_critical_color   = raw.nano_critical_color,

    bg = raw.nano_background_color,
    fg = raw.nano_foreground_color,

    -- Highlight Decoration ----------------------------------------------------------------

    nano_foreground = { fg = raw.nano_foreground_color },
    nano_subtle     = { fg = raw.nano_subtle_color },
    nano_faded      = { fg = raw.nano_faded_color },
    nano_veryfaded  = { fg = raw.nano_veryfaded_color },
    nano_salient    = { fg = raw.nano_salient_color },
    nano_strong     = { fg = raw.nano_strong_color, bold = true },
    nano_popout     = { fg = raw.nano_popout_color },
    nano_critical   = { fg = raw.nano_critical_color },

    -- Terminal Colors ---------------------------------------------------------------------

    terminal_color_0  = raw.ansi.black,
    terminal_color_1  = raw.ansi.red,
    terminal_color_2  = raw.ansi.green,
    terminal_color_3  = raw.ansi.yellow,
    terminal_color_4  = raw.ansi.blue,
    terminal_color_5  = raw.ansi.magenta,
    terminal_color_6  = raw.ansi.cyan,
    terminal_color_7  = raw.nano_foreground_color,
    terminal_color_8  = raw.ansi.black,
    terminal_color_9  = raw.ansi.red,
    terminal_color_10 = raw.ansi.green,
    terminal_color_11 = raw.ansi.yellow,
    terminal_color_12 = raw.ansi.blue,
    terminal_color_13 = raw.ansi.magenta,
    terminal_color_14 = raw.ansi.cyan,
    terminal_color_15 = raw.nano_foreground_color,
  }
end

return M
