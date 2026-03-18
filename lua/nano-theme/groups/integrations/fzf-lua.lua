-- Description -----------------------------------------------------------------------------
--
-- Integration with fzf-lua.
--
-- -----------------------------------------------------------------------------------------

local M = {}

--- Return the highlight group table for fzf-lua integration.
---@return table # Map of fzf-lua highlight group names to their attribute tables.
function M.get()
  local c = require("nano-theme.colors").get()

	return {
    FzfLuaBufNr      = { link = "Comment" },
    FzfLuaFzfPrompt  = c.nano_popout,
    FzfLuaHeaderBind = { link = "Special" },
    FzfLuaHeaderText = { link = "Bold" },
    FzfLuaLiveSym    = { fg = c.nano_salient_color, bold = true },
    FzfLuaPathColNr  = { link = "Comment" },
    FzfLuaPathLineNr = { link = "Comment" },
    FzfLuaTabMarker  = { link = "Comment" },
	}
end

return M
