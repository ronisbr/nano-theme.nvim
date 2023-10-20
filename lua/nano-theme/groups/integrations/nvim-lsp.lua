-- Description -----------------------------------------------------------------------------
--
-- Integration with nvim-lsp.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

	return {
		DiagnosticError = c.nano_critical,
		DiagnosticWarn  = c.nano_popout,
		DiagnosticInfo  = c.nano_faded,
		DiagnosticHint  = c.nano_faded,
    DiagnosticOk    = c.nano_faded,
	}
end

return M
