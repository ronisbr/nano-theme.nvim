-- Description -----------------------------------------------------------------------------
--
-- Integration with nvim-hlslens.
--
-- -----------------------------------------------------------------------------------------

local M = {}

--- Return the highlight group table for nvim-hlslens integration.
---@return table # Map of nvim-hlslens highlight group names to their attribute tables.
function M.get()
  local c = require("nano-theme.colors").get()

  return {
    -- The match under the cursor is the current search match.
    HlSearchNear     = { link = "CurSearch" },
    -- Lenses on the other matches are annotations, so they stay faded and without a
    -- background to be told apart from the matched text.
    HlSearchLens     = { fg = c.nano_faded_color, italic = true },
    -- The lens next to the current match carries the important count, hence the salient
    -- face.
    HlSearchLensNear = { fg = c.nano_salient_color, bold = true },
  }
end

return M
