-- Description -----------------------------------------------------------------------------
--
-- Integration with fzf-lua.
--
-- -----------------------------------------------------------------------------------------

local M = {}

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
