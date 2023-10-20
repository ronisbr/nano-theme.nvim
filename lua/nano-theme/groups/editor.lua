-- Description -----------------------------------------------------------------------------
--
-- Set the colors related to the editor.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

  return {
    ColorColumn  = { bg = c.nano_highlight_color },
    Conceal      = { fg = c.nano_salient_color, bold = true },
    Cursor       = { fg = c.bg, bg = c.fg },
    lCursor      = { link = "Cursor" },
    CursorIM     = { link = "Cursor" },
    CursorColumn = { fg = c.fg },
    CursorLine   = { bg = c.nano_highlight_color },
    Directory    = { fg = c.fg },
    EndOfBuffer  = {},
    ErrorMsg     = c.nano_critical,
    VertSplit    = { fg = c.bg, bg = c.bg },
    Folded       = { fg = c.nano_salient_color, bold = true },
    SignColumn   = c.nano_faded,
    SignColumnSB = c.nano_faded,
    LineNr       = c.nano_faded,
    CursorLineNr = { link = "Normal" },
    MatchParen   = { bg = c.nano_subtle_color, bold = true },
    ModeMsg      = c.nano_faded,
    MsgSeparator = {},
    MoreMsg      = c.nano_foreground,
    NonText      = c.nano_subtle,
    Normal       = { fg = c.fg, bg = c.bg },
    NormalNC     = { link = "Normal" },
    NormalSB     = { link = "Normal" },
    NormalFloat  = { fg = c.fg, bg = c.nano_highlight_color },
    FloatBorder  = c.nano_foreground,
    FloatTitle   = c.nano_strong, -- Title of floating windows
    Pmenu        = { fg = c.fg, bg = c.bg_alt },
    PmenuSel     = { bg = c.nano_subtle_color },
    PmenuSbar    = { bg = c.nano_faded_color },
    PmenuThumb   = { bg = c.nano_foreground_color },
    Question     = c.nano_foreground,
    Search       = { bg = c.nano_subtle_color },
    IncSearch    = { bg = c.nano_subtle_color },
    CurSearch    = { bg = c.nano_subtle_color, bold = true },
    SpellBad     = { sp = c.nano_critical_color, undercurl = true },
    SpellCap     = { sp = c.nano_saliend_color, undercurl = true },
    SpellLocal   = { sp = c.nano_faded_color, undercurl = true },
    SpellRare    = { sp = c.nano_faded_color, undercurl = true },
    StatusLine   = { fg = c.fg, bg = c.bg },
    StatusLineNC = { fg = c.bg, bg = c.bg },
    Title        = c.nano_strong,
    Visual       = { bg = c.nano_subtle_color },
    VisualNOS    = { link = "Visual" },
    WarningMsg   = c.nano_popout,
  }
end

return M
