-- Description -----------------------------------------------------------------------------
--
-- Integration with tiny-cmdline.nvim.
--
-- -----------------------------------------------------------------------------------------

local M = {}

--- Return the highlight group table for tiny-cmdline.nvim integration.
---@return table # Map of tiny-cmdline highlight group names to their attribute tables.
function M.get()
  return {
    TinyCmdlineNormal = { link = "NormalFloat" },
    TinyCmdlineBorder = { link = "FloatBorder" },
    TinyCmdlineTitle  = { link = "FloatTitle" },
  }
end

return M
