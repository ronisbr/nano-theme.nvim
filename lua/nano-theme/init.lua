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

function M.load()
  -- Clear all the current highlights.
  vim.cmd([[hi clear]])

  -- Set the variables regarding the current theme.
  vim.g.colors_name = "nano-theme"
  vim.o.termguicolors = true

  -- Load the default groups.
  local g_editor = require("nano-theme.groups.editor").get()
  local g_syntax = require("nano-theme.groups.syntax").get()

  for name, val in pairs(g_editor) do
    vim.api.nvim_set_hl(0, name, val)
  end

  for name, val in pairs(g_syntax) do
    vim.api.nvim_set_hl(0, name, val)
  end

  -- Integrations --------------------------------------------------------------------------

  -- List of available integrations.
  local integrations = {
    "dashboard",
    "indent-blankline",
    "mini",
    "neogit",
    "neotree",
    "noice",
    "notify",
    "nvim-lsp",
    "telescope",
    "treesitter",
  }

  for k, i in ipairs(integrations) do
    local g = require("nano-theme.groups.integrations." .. i).get()

    for name, val in pairs(g) do
      vim.api.nvim_set_hl(0, name, val)
    end
  end

  -- Set the terminal colors.
  local c = require("nano-theme.colors").get()
  vim.g.terminal_color_0  = c.terminal_color_0
  vim.g.terminal_color_1  = c.terminal_color_1
  vim.g.terminal_color_2  = c.terminal_color_2
  vim.g.terminal_color_3  = c.terminal_color_3
  vim.g.terminal_color_4  = c.terminal_color_4
  vim.g.terminal_color_5  = c.terminal_color_5
  vim.g.terminal_color_6  = c.terminal_color_6
  vim.g.terminal_color_7  = c.terminal_color_7
  vim.g.terminal_color_8  = c.terminal_color_8
  vim.g.terminal_color_9  = c.terminal_color_9
  vim.g.terminal_color_10 = c.terminal_color_10
  vim.g.terminal_color_11 = c.terminal_color_11
  vim.g.terminal_color_12 = c.terminal_color_12
  vim.g.terminal_color_13 = c.terminal_color_13
  vim.g.terminal_color_14 = c.terminal_color_14
  vim.g.terminal_color_15 = c.terminal_color_15
end

return M
