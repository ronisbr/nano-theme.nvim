-- Description -----------------------------------------------------------------------------
--
-- Compile the configurations from the user.
--
-- -----------------------------------------------------------------------------------------

local M = {}

M.options = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", M.options, options or {})
end

return M
