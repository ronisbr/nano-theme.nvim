-- Description -----------------------------------------------------------------------------
--
-- Integration with indent-blankline.
--
-- -----------------------------------------------------------------------------------------

local M = {}

--- Return the highlight group table for indent-blankline integration.
---@return table # Map of indent-blankline highlight group names to their attribute tables.
function M.get()
  local c = require("nano-theme.colors").get()

	return {
    IblScope = c.nano_veryfaded
	}
end

return M
