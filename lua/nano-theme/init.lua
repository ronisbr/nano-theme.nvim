-- nano-theme.nvim --- A Neovim theme based on N Λ N O Emacs -------------------------------
--
-- Copyright (C) 2023 - 2024  Ronan Arraes Jardim Chagas
--
-- License ---------------------------------------------------------------------------------
--
-- nano-theme.nvim - A Neovim theme based on N Λ N O Emacs
-- Copyright (C) 2023 - 2024  Ronan Arraes Jardim Chagas
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.
--
-- Comments --------------------------------------------------------------------------------
--
-- The code version and structure were adapted from catppuccin/nvim.
--
-- -----------------------------------------------------------------------------------------

local M = {}

M.options = {
  light_variant      = "default",
  dark_variant       = "default",
  transparent        = false,
  transparent_floats = true,
  float_blend        = 0,
}

--- Set up the theme with the provided options, merging them into the defaults.
---@param options table|nil Table with configuration options to override the defaults.
function M.setup(options)
  local merged = vim.tbl_deep_extend("force", M.options, options or {})
  local variants = require("nano-theme.variants")

  for _, mode in ipairs({ "light", "dark" }) do
    local key = mode .. "_variant"
    if not variants.has(merged[key]) then
      error(string.format(
        "nano-theme: invalid %s %q (available variants: %s)",
        key,
        tostring(merged[key]),
        table.concat(variants.names, ", ")
      ))
    end
  end

  if type(merged.transparent_floats) ~= "boolean" then
    error("nano-theme: transparent_floats must be a boolean")
  end

  if type(merged.float_blend) ~= "number"
      or merged.float_blend % 1 ~= 0
      or merged.float_blend < 0
      or merged.float_blend > 100 then
    error("nano-theme: float_blend must be an integer from 0 through 100")
  end

  M.options = merged
end

local transparent_groups = {
  -- Editor surfaces -----------------------------------------------------------------------
  ColorColumn = true,
  FoldColumn = true,
  Folded = true,
  Normal = true,
  NormalNC = true,
  NormalSB = true,
  Pmenu = true,
  PmenuSbar = true,
  PmenuThumb = true,
  SignColumn = true,
  SignColumnSB = true,
  StatusLine = true,
  StatusLineNC = true,
  TabLine = true,
  TabLineFill = true,
  VertSplit = true,
  WinSeparator = true,

  -- Integration containers ---------------------------------------------------------------
  MiniClueDescGroup = true,
  MiniClueNextKeyWithPostkeys = true,
  MiniStatuslineDevinfo = true,
  MiniStatuslineFileinfo = true,
  MiniStatuslineFilename = true,
  MiniStatuslineInactive = true,
  MiniTablineFill = true,
  MiniTablineHidden = true,
  MiniTablineModifiedHidden = true,
  MiniTablineModifiedVisible = true,
  MiniTablineTabpagesection = true,
  MiniTablineVisible = true,
  NeoTreeNormal = true,
  NeoTreeNormalNC = true,
  NeoTreeStatusLine = true,
  NeoTreeTitleBar = true,
  TelescopeBorder = true,
  TelescopeNormal = true,
  background = true,
  buffer_visible = true,
  close_button = true,
  close_button_visible = true,
  fill = true,
  modified = true,
  modified_visible = true,
  offset_separator = true,
  separator = true,
  separator_visible = true,
  tab = true,
  tab_close = true,
  tab_separator = true,
}

local integrations = {
  "bufferline",
  "copilot",
  "dashboard",
  "fzf-lua",
  "indent-blankline",
  "mini",
  "neogit",
  "neotree",
  "noice",
  "notify",
  "nvim-lsp",
  "telescope",
  "tiny-cmdline",
  "treesitter",
}

local function set_groups(groups)
  for name, val in pairs(groups) do
    if M.options.transparent and transparent_groups[name] and not val.link then
      val = vim.tbl_extend("force", val, { bg = "NONE" })
    end
    vim.api.nvim_set_hl(0, name, val)
  end
end

local function notify_colorscheme()
  vim.api.nvim_exec_autocmds("ColorScheme", {
    pattern = "nano-theme",
    modeline = false,
  })
end

--- Open an interactive selector to choose the light theme variant and reload the theme.
function M.select_light_variant()
  require("nano-theme.selector").open("light")
end

--- Open an interactive selector to choose the dark theme variant and reload the theme.
function M.select_dark_variant()
  require("nano-theme.selector").open("dark")
end

--- Apply the theme and optionally notify ColorScheme listeners.
---@param options table|nil Application options. Set `notify` to true for manual reloads.
function M.apply(options)
  options = options or {}

  -- Clear all the current highlights.
  vim.cmd([[hi clear]])

  -- Set the variables regarding the current theme.
  vim.g.colors_name = "nano-theme"
  vim.o.termguicolors = true

  -- Load the default groups.
  local g_editor = require("nano-theme.groups.editor").get(M.options)
  local g_syntax = require("nano-theme.groups.syntax").get()

  set_groups(g_editor)
  set_groups(g_syntax)

  -- Integrations --------------------------------------------------------------------------

  for _, i in ipairs(integrations) do
    local g = require("nano-theme.groups.integrations." .. i).get(M.options)
    set_groups(g)
  end

  -- Set the terminal colors.
  local c = require("nano-theme.colors").get()
  for i = 0, 15 do
    vim.g["terminal_color_" .. i] = c["terminal_color_" .. i]
  end

  if options.notify then
    notify_colorscheme()
  end
end

--- Load the theme without manually emitting ColorScheme.
--- The `:colorscheme` command emits that event after this function returns.
function M.load()
  M.apply({ notify = false })
end

--- Explicitly enable or disable transparent backgrounds.
---@param enabled boolean Whether transparent backgrounds should be enabled.
function M.set_transparent(enabled)
  M.options.transparent = not not enabled
  if vim.g.colors_name == "nano-theme" then
    M.apply({ notify = true })
  end
end

--- Toggle transparent backgrounds.
---@return boolean # The newly enabled transparency state.
function M.toggle_transparent()
  M.set_transparent(not M.options.transparent)
  return M.options.transparent
end

vim.api.nvim_create_user_command("NanoThemeTransparent", M.toggle_transparent, { force = true })
vim.api.nvim_create_user_command("NanoThemeTransparentEnable", function()
  M.set_transparent(true)
end, { force = true })
vim.api.nvim_create_user_command("NanoThemeTransparentDisable", function()
  M.set_transparent(false)
end, { force = true })
vim.api.nvim_create_user_command("NanoThemeLight", M.select_light_variant, { force = true })
vim.api.nvim_create_user_command("NanoThemeDark", M.select_dark_variant, { force = true })

return M
