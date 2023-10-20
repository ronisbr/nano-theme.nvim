-- Description -----------------------------------------------------------------------------
--
-- Integration with dashboard.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

  return {
    DashboardCenter       = c.nano_faded,
    DashboardDesc         = c.nano_foreground,
    DashboardFiles        = c.nano_foreground,
    DashboardFooter       = c.nano_faded,
    DashboardHeader       = { fg = c.nano_salient_color, bold = true },
    DashboardIcon         = c.nano_salient,
    DashboardKey          = c.nano_faded,
    DashboardMruTitle     = c.nano_foreground,
    DashboardProjectTitle = c.nano_foreground,
    DashboardShortCut     = c.nano_faded,
  }
end

return M
