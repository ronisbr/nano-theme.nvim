-- Description -----------------------------------------------------------------------------
--
-- Integration with neorg.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

  return {
    ["@neorg.tags.ranged_verbatim.code_block"] = { bg = c.nano_highlight_color }
  }
end

return M
