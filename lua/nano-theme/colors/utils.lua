-- Description -----------------------------------------------------------------------------
--
-- Utility functions for theme color building.
--
-- -----------------------------------------------------------------------------------------

local M = {}

--- Build the full color table from the raw color values and terminal color mapping.
---@param raw table Table of raw hex color strings and terminal color values.
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

    terminal_color_0  = raw.terminal_color_0,
    terminal_color_1  = raw.terminal_color_1,
    terminal_color_2  = raw.terminal_color_2,
    terminal_color_3  = raw.terminal_color_3,
    terminal_color_4  = raw.terminal_color_4,
    terminal_color_5  = raw.terminal_color_5,
    terminal_color_6  = raw.terminal_color_6,
    terminal_color_7  = raw.nano_foreground_color,
    terminal_color_8  = raw.terminal_color_8,
    terminal_color_9  = raw.terminal_color_9,
    terminal_color_10 = raw.terminal_color_10,
    terminal_color_11 = raw.terminal_color_11,
    terminal_color_12 = raw.terminal_color_12,
    terminal_color_13 = raw.terminal_color_13,
    terminal_color_14 = raw.terminal_color_14,
    terminal_color_15 = raw.nano_foreground_color,
  }
end

return M
