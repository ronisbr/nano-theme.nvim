-- Description -----------------------------------------------------------------------------
--
-- Integration with copilot.lua.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

  return {
    CopilotAnnotation = c.nano_strong,
    CopilotSuggestion = { fg = c.nano_faded_color, italic = true },
  }
end

return M
