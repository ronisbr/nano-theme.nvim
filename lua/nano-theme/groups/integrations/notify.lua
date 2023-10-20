-- Description -----------------------------------------------------------------------------
--
-- Integration with notify.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

  return {
    NotifyDEBUGBorder = c.nano_foreground,
    NotifyDEBUGIcon   = c.nano_strong,
    NotifyDEBUGTitle  = c.nano_strong,
    NotifyERRORBorder = c.nano_foreground,
    NotifyERRORIcon   = c.nano_critical,
    NotifyERRORTitle  = c.nano_critical,
    NotifyINFOBorder  = c.nano_foreground,
    NotifyINFOIcon    = c.nano_strong,
    NotifyINFOTitle   = c.nano_strong,
    NotifyTRACEBorder = c.nano_foreground,
    NotifyTRACEIcon   = c.nano_strong,
    NotifyTRACETitle  = c.nano_strong,
    NotifyWARNBorder  = c.nano_foreground,
    NotifyWARNIcon    = c.nano_popout,
    NotifyWARNTitle   = c.nano_popout,
  }
end

return M
