-- Description -----------------------------------------------------------------------------
--
-- Canonical registry of theme variants.
--
-- -----------------------------------------------------------------------------------------

local M = {}

M.names = {
  "amber",
  "blue",
  "default",
  "gilded",
  "gray",
  "green",
  "ink",
  "jinx",
  "old_terminal",
  "orange",
  "rougier",
}

local registry = {}

for _, name in ipairs(M.names) do
  registry[name] = require("nano-theme.colors." .. name)
end

---@param name string Theme variant name.
---@return boolean # Whether the variant exists.
function M.has(name)
  return registry[name] ~= nil
end

---@param mode "light"|"dark" Background mode.
---@param name string Theme variant name.
---@return function # Palette builder for the requested mode and variant.
function M.get(mode, name)
  return registry[name][mode]
end

return M
