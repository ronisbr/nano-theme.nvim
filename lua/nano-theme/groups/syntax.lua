-- Description -----------------------------------------------------------------------------
--
-- Set the colors related to the syntax.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

  return {
    Added          = c.nano_salient,
    Bold           = { bold = true },
    Boolean        = c.nano_salient,
    Character      = c.nano_faded,
    Changed        = c.nano_popout,
    Comment        = c.nano_faded,
    Conditional    = c.nano_salient,
    Constant       = c.nano_salient,
    Debug          = { link = "Special" },
    Define         = { link = "PreProc" },
    Delimiter      = c.nano_foreground,
    Error          = c.nano_critical,
    Exception      = c.nano_salient,
    Float          = { link = "Number" },
    Function       = c.nano_strong,
    Identifier     = c.nano_foreground,
    Include        = c.nano_salient,
    Italic         = { italic = true },
    Keyword        = c.nano_salient,
    Label          = c.nano_salient,
    Macro          = { link = "Function" },
    Number         = c.nano_salient,
    Operator       = c.nano_foreground,
    PreCondit      = c.nano_salient,
    PreProc        = c.nano_salient,
    Repeat         = c.nano_salient,
    Special        = c.nano_salient,
    SpecialChar    = c.nano_salient,
    SpecialComment = { link = "Comment" },
    Statement      = c.nano_salient,
    StorageClass   = c.nano_salient,
    String         = c.nano_faded,
    Structure      = c.nano_salient,
    Tag            = c.nano_strong,
    Todo           = c.nano_salient,
    Type           = c.nano_salient,
    Typedef        = c.nano_salient,
    Underlined     = { underline = true },
    Whitespace     = c.nano_subtle,

    -- Diff --------------------------------------------------------------------------------

    DiffAdd     = c.nano_salient,
    DiffChange  = c.nano_popout,
    DiffDelete  = c.nano_faded,
    DiffText    = { bg = c.nano_subtle_color },
    diffAdded   = c.nano_salient,
    diffChanged = c.nano_popout,
    diffNewFile = c.nano_strong,
    diffOldFile = c.nano_strong,
    diffRemoved = c.nano_faded,
  }
end

return M
