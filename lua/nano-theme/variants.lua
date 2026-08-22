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
  "wood",
}

local valid = {}

for _, name in ipairs(M.names) do
  valid[name] = true
end

---@param name string Theme variant name.
---@return boolean # Whether the variant exists.
function M.has(name)
  return valid[name] == true
end

--- Return the palette builder, loading the variant module on demand.
---@param mode "light"|"dark" Background mode.
---@param name string Theme variant name.
---@return function # Palette builder for the requested mode and variant.
function M.get(mode, name)
  return require("nano-theme.colors." .. name)[mode]
end

return M
