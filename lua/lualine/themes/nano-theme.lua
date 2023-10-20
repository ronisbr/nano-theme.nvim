-- Description -----------------------------------------------------------------------------
--
-- Lualine theme based on nano-theme.nvim.
--
-- -----------------------------------------------------------------------------------------

local c = require("nano-theme.colors").get()

return {
  inactive = {
    a = { fg = c.bg, bg = c.nano_subtle_color },
    b = { fg = c.nano_faded_color, bg = c.nano_subtle_color },
    c = { fg = c.nano_faded_color, bg = c.nano_subtle_color },
  },

  insert = {
    a = { fg = c.bg, bg = c.nano_popout_color },
    b = { fg = c.nano_foreground_color, bg = c.nano_subtle_color },
    c = { fg = c.nano_foreground_color, bg = c.nano_subtle_color },
  },

  normal = {
    a = { fg = c.bg, bg = c.nano_faded_color },
    b = { fg = c.nano_foreground_color, bg = c.nano_subtle_color },
    c = { fg = c.nano_foreground_color, bg = c.nano_subtle_color },
  },

  replace = {
    a = { fg = c.bg, bg = c.nano_critical_color },
    b = { fg = c.nano_foreground_color, bg = c.nano_subtle_color },
    c = { fg = c.nano_foreground_color, bg = c.nano_subtle_color },
  },

  visual = {
    a = { fg = c.bg, bg = c.nano_salient_color },
    b = { fg = c.nano_foreground_color, bg = c.nano_subtle_color },
    c = { fg = c.nano_foreground_color, bg = c.nano_subtle_color },
  },
}
