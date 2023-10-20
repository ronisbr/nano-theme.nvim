-- Description -----------------------------------------------------------------------------
--
-- Integration with neotree.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

  return {
    NeoTreeCursorLine         = { bg = c.bg },
    NeoTreeDimText            = c.nano_faded,
    NeoTreeDirectoryIcon      = c.nano_salient,
    NeoTreeDirectoryName      = c.nano_foreground,
    NeoTreeExpander           = c.nano_faded,
    NeoTreeFilterTerm         = c.nano_salient,
    NeoTreeFloatBorder        = { link = "FloatBorder" },
    NeoTreeFloatTitle         = { link = "FloatTitle" },
    NeoTreeGitAdded           = c.nano_salient,
    NeoTreeGitConflict        = c.nano_critical,
    NeoTreeGitDeleted         = c.nano_faded,
    NeoTreeGitIgnored         = { fg = c.nano_faded_color, italic = true },
    NeoTreeGitModified        = c.nano_popout,
    NeoTreeGitStaged          = c.nano_popout,
    NeoTreeGitUnstaged        = c.nano_foreground,
    NeoTreeGitUntracked       = c.nano_faded,
    NeoTreeIndentMarker       = c.nano_faded,
    NeoTreeModified           = c.nano_faded,
    NeoTreeNormal             = { fg = c.fg, bg = c.nano_highlight_color },
    NeoTreeNormalNC           = { fg = c.fg, bg = c.nano_highlight_color },
    NeoTreeRootName           = c.nano_strong,
    NeoTreeStatusLine         = { fg = c.fg, bg = c.nano_subtle_color },
    NeoTreeSymbolicLinkTarget = c.nano_faded,
    NeoTreeTitleBar           = { fg = c.bg, bg = c.nano_faded_color },
  }
end

return M
