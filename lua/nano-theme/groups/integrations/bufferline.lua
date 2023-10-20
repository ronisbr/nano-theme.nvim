-- Description -----------------------------------------------------------------------------
--
-- Integration with bufferline.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

  return {
    -- Buffers -----------------------------------------------------------------------------

    background      = { bg = c.nano_subtle_color },
    buffer_visible  = { fg = c.fg, bg = c.nano_subtle_color },
    buffer_selected = { fg = c.fg, bg = c.nano_highlight_color },

    -- Tabs --------------------------------------------------------------------------------

    indicator_selected     = { fg = c.nano_highlight_color, bg = c.nano_highlight_color },
    tab                    = { fg = c.fg, bg = c.nano_sublte_color },
    tab_close              = { fg = c.fg, bg = c.nano_subtle_color },
    tab_selected           = { fg = c.fg, bg = c.nano_highlight_color },
    tab_separator          = { fg = c.fg, bg = c.nano_subtle_color },
    tab_separator_selected = { fg = c.fg, bg = c.nano_highlight_color },

    -- Separators --------------------------------------------------------------------------

    offset_separator   = { fg = c.fg, bg = c.nano_subtle_color },
    separator          = { fg = c.nano_subtle_color, bg = c.nano_subtle_color },
    separator_selected = { fg = c.fg, bg = c.nano_highlight_color },
    separator_visible  = { fg = c.nano_subtle_color, bg = c.nano_subtle_color },

    -- Close Buttons -----------------------------------------------------------------------

    close_button          = { fg = c.fg, bg = c.nano_subtle_color },
    close_button_selected = { fg = c.fg, bg = c.nano_highlight_color },
    close_button_visible  = { fg = c.fg, bg = c.nano_subtle_color },

    -- Empty Fill --------------------------------------------------------------------------

    fill = { bg = c.nano_subtle_color },

    -- Modified ----------------------------------------------------------------------------

    modified          = { fg = c.nano_popout_color, bg = c.nano_subtle_color },
    modified_visible  = { fg = c.nano_popout_color, bg = c.nano_subtle_color },
    modified_selected = { fg = c.nano_popout_color, bg = c.nano_highlight_color },
  }
end

return M
