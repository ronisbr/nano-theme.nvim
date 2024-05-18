-- Description -----------------------------------------------------------------------------
--
-- Integration with indent-blankline.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

	return {
    IblScope = c.nano_veryfaded
	}
end

return M
