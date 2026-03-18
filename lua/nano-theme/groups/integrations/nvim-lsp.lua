-- Description -----------------------------------------------------------------------------
--
-- Integration with nvim-lsp.
--
-- -----------------------------------------------------------------------------------------

local M = {}

--- Return the highlight group table for nvim-lsp diagnostic integration.
---@return table # Map of diagnostic highlight group names to their attribute tables.
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
