-- Description -----------------------------------------------------------------------------
--
-- Set the colors of the theme.
--
-- -----------------------------------------------------------------------------------------

local M = {}

local cache = {}

--------------------------------------------------------------------------------------------
--                                    Public Functions                                    --
--------------------------------------------------------------------------------------------

--- Return the color table for the currently active background and variant.
---@return table # Color table for the active theme variant.
function M.get()
  local opts     = require("nano-theme").options
  local mode      = vim.o.background == "light" and "light" or "dark"
  local variant   = opts[mode .. "_variant"]
  local cache_key = mode .. ":" .. variant

  if not cache[cache_key] then
    cache[cache_key] = require("nano-theme.variants").get(mode, variant)()
  end

  return cache[cache_key]
end

return M
