-- Description -----------------------------------------------------------------------------
--
-- Integration with telescope.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

  return {
		TelescopeBorder         = { link = "FloatBorder" },
		TelescopeMatching       = c.nano_salient,
		TelescopeSelection      = { bg = c.nano_highlight_color },
		TelescopeSelectionCaret = c.nano_faded,
    TelescopeNormal         = { fg = c.fg },
    TelescopePromptCounter  = c.nano_faded,
    TelescopePromptPrefix   = c.nano_popout,
    TelescopeTitle          = c.nano_strong,
  }
end

return M
