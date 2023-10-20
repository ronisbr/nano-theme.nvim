-- Description -----------------------------------------------------------------------------
--
-- Integration with mini.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

	return {
		MiniIndentscopeSymbol = c.nano_faded,
	}
end

return M
