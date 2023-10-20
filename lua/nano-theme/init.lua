-- nano-theme.nvim --- A Neovim theme based on N Λ N O Emacs -------------------------------
--
-- Copyright (C) 2023  Ronan Arraes Jardim Chagas
--
-- License ---------------------------------------------------------------------------------
--
-- Permission is hereby granted, free of charge, to any person obtaining
-- a copy of this software and associated documentation files (the
-- "Software"), to deal in the Software without restriction, including
-- without limitation the rights to use, copy, modify, merge, publish,
-- distribute, sublicense, and/or sell copies of the Software, and to
-- permit persons to whom the Software is furnished to do so, subject to
-- the following conditions:
--
-- The above copyright notice and this permission notice shall be
-- included in all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
-- EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
-- MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
-- NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
-- FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
-- TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
-- THE USE OR OTHER DEALINGS IN THE SOFTWARE.
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
  vim.o.background = "light"
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
    "mini",
    "neotree",
    "neogit",
    "notify",
    "nvim-lsp",
    "noice",
    "treesitter",
    "telescope",
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
