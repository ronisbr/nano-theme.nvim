-- Description -----------------------------------------------------------------------------
--
-- Integration with noice.
--
-- -----------------------------------------------------------------------------------------

local M = {}

--- Return the highlight group table for noice integration.
---@return table Map of noice highlight group names to their attribute tables.
function M.get()
  local c = require("nano-theme.colors").get()

	return {
		NoiceCmdline                  = c.nano_foreground,
		NoiceCmdlineIcon              = c.nano_popout,
		NoiceCmdlineIconSearch        = c.nano_popout,
		NoiceCmdlinePopupBorder       = c.nano_faded,
		NoiceCmdlinePopupBorderSearch = c.nano_faded,
		NoiceConfirmBorder            = c.nano_faded,
		NoiceMini                     = c.nano_foreground,
    NoiceCmdlinePopupTitle        = { link = "FloatTitle" },
	}
end

return M
