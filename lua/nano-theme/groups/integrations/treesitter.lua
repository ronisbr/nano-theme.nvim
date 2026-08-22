-- Description -----------------------------------------------------------------------------
--
-- Integration with treesitter.
--
-- -----------------------------------------------------------------------------------------

local M = {}

--- Return the highlight group table for treesitter integration.
---@return table # Map of treesitter highlight group names to their attribute tables.
function M.get()
  local c = require("nano-theme.colors").get()

  return {
    -- Misc --------------------------------------------------------------------------------

    ["@comment"]  = { link = "Comment" },
    ["@define"]   = { link = "Define" },
    ["@error"]    = { link = "Error" },
    ["@operator"] = { link = "Operator" },
    ["@preproc"]  = { link = "PreProc" },

    -- Punctuation -------------------------------------------------------------------------

    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"]   = { link = "Delimiter" },
    ["@punctuation.special"]   = { link = "Special" },

    -- Literals ----------------------------------------------------------------------------

    ["@boolean"]           = { link = "Boolean" },
    ["@character"]         = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@float"]             = { link = "Float" },
    ["@number"]            = { link = "Number" },
    ["@string"]            = { link = "String" },
    ["@string.escape"]     = { link = "String" },
    ["@string.regex"]      = { link = "String" },
    ["@string.special"]    = { link = "Special" },

    -- Functions ---------------------------------------------------------------------------

    ["@constructor"]      = c.nano_salient,
    ["@function"]         = { link = "Function" },
    ["@function.builtin"] = c.nano_foreground,
    ["@function.call"]    = { link = "Function" },
    ["@function.macro"]   = { link = "Function" },
    ["@method"]           = { link = "Function" },
    ["@method.call"]      = { link = "Function" },
    ["@parameter"]        = c.nano_foreground,

    -- Keywords ----------------------------------------------------------------------------

    ["@conditional"]      = { link = "Conditional" },
    ["@exception"]        = { link = "Exception" },
    ["@include"]          = { link = "Include" },
    ["@keyword"]          = { link = "Keyword" },
    ["@keyword.export"]   = { link = "Keyword" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.operator"] = c.nano_foreground,
    ["@keyword.return"]   = { link = "Keyword" },
    ["@label"]            = { link = "Label" },
    ["@repeat"]           = { link = "Repeat" },

    -- Markup ------------------------------------------------------------------------------

    ["@markup"]             = { link = "Special" },
    ["@markup.heading"]     = { link = "Title" },
    ["@markup.environment"] = { link = "Structure" },
    ["@markup.link"]        = { link = "Underlined" },

    -- Types -------------------------------------------------------------------------------

    ["@attribute"]       = { link = "Constant" },
    ["@field"]           = { fg   = c.fg },
    ["@property"]        = { fg   = c.fg },
    ["@storageclass"]    = { link = "StorageClass" },
    ["@type"]            = { link = "Type" },
    ["@type.builtin"]    = { link = "Type" },
    ["@type.definition"] = { link = "Type" },
    ["@type.qualifier"]  = { link = "Keyword" },

    -- Identifiers -------------------------------------------------------------------------

    ["@constant"]         = { link = "Constant" },
    ["@constant.builtin"] = { link = "Constant" },
    ["@constant.macro"]   = { link = "Macro" },
    ["@namespace"]        = c.nano_strong,
    ["@module"]           = { link = "Structure" },
    ["@symbol"]           = c.nano_salient,
    ["@variable"]         = c.nano_foreground,
    ["@variable.builtin"] = c.nano_foreground,

    -- Text --------------------------------------------------------------------------------

    ["@text"]                  = { link = "String" },
    ["@text.danger"]           = c.nano_critical,
    ["@text.diff.add"]         = { link = "DiffAdd" },
    ["@text.diff.delete"]      = { link = "DiffDelete" },
    ["@text.emphasis"]         = { fg = c.nano_faded_color, italic = true },
    ["@text.environment"]      = c.nano_salient,
    ["@text.environment.name"] = c.nano_faded,
    ["@text.literal"]          = c.nano_salient,
    ["@text.math"]             = c.nano_salient,
    ["@text.note"]             = { link = "String" },
    ["@text.reference"]        = { link = "Tag" },
    ["@text.strike"]           = { fg = c.nano_faded_color, strikethrough = true },
    ["@text.strong"]           = c.nano_strong,
    ["@text.title"]            = { fg = c.nano_salient_color, bold = true },
    ["@text.todo"]             = c.nano_salient,
    ["@text.todo.checked"]     = c.nano_faded,
    ["@text.todo.unchecked"]   = c.nano_salient,
    ["@text.underline"]        = { link = "Underlined" },
    ["@text.uri"]              = { fg = c.nano_salient_color, underline = true },
    ["@text.warning"]          = c.nano_popout,

    -- Tags --------------------------------------------------------------------------------

    ["@tag"] = c.nano_faded,
    ["@tag.attribute"] = c.nano_faded,
    ["@tag.delimiter"] = c.nano_faded,

    -- Language-Specific Configurations ----------------------------------------------------

    -- Markdown
    ["@text.title.1.markdown"] = c.nano_strong,
    ["@text.title.2.markdown"] = c.nano_strong,
    ["@text.title.3.markdown"] = c.nano_strong,
    ["@text.title.4.markdown"] = c.nano_strong,
    ["@text.title.5.markdown"] = c.nano_strong,
    ["@text.title.6.markdown"] = c.nano_strong,

    ["@text.title.1.marker.markdown"] = c.nano_strong,
    ["@text.title.2.marker.markdown"] = c.nano_strong,
    ["@text.title.3.marker.markdown"] = c.nano_strong,
    ["@text.title.4.marker.markdown"] = c.nano_strong,
    ["@text.title.5.marker.markdown"] = c.nano_strong,
    ["@text.title.6.marker.markdown"] = c.nano_strong,

    -- Modern Capture Names (Neovim 0.10+) -------------------------------------------------
    --
    -- Several captures were renamed in Neovim 0.10. The entries above keep older Neovim
    -- versions working, while the entries below cover the current capture names.

    -- Variables
    ["@variable.member"]            = { fg = c.fg },
    ["@variable.parameter"]         = c.nano_foreground,
    ["@variable.parameter.builtin"] = c.nano_foreground,

    -- Modules
    ["@module.builtin"] = { link = "Structure" },

    -- Literals
    ["@number.float"]          = { link = "Float" },
    ["@string.documentation"]  = { link = "String" },
    ["@string.regexp"]         = { link = "String" },
    ["@string.special.path"]   = { link = "Special" },
    ["@string.special.symbol"] = c.nano_salient,
    ["@string.special.url"]    = { fg = c.nano_salient_color, underline = true },

    -- Types
    ["@attribute.builtin"] = { link = "Constant" },

    -- Functions
    ["@function.method"]      = { link = "Function" },
    ["@function.method.call"] = { link = "Function" },

    -- Keywords
    ["@keyword.conditional"]         = { link = "Conditional" },
    ["@keyword.conditional.ternary"] = { link = "Conditional" },
    ["@keyword.coroutine"]           = { link = "Keyword" },
    ["@keyword.debug"]               = { link = "Keyword" },
    ["@keyword.directive"]           = { link = "PreProc" },
    ["@keyword.directive.define"]    = { link = "Define" },
    ["@keyword.exception"]           = { link = "Exception" },
    ["@keyword.import"]              = { link = "Include" },
    ["@keyword.modifier"]            = { link = "StorageClass" },
    ["@keyword.repeat"]              = { link = "Repeat" },
    ["@keyword.type"]                = { link = "Keyword" },

    -- Comments
    ["@comment.documentation"] = { link = "Comment" },
    ["@comment.error"]         = c.nano_critical,
    ["@comment.note"]          = { link = "String" },
    ["@comment.todo"]          = c.nano_salient,
    ["@comment.warning"]       = c.nano_popout,

    -- Markup
    ["@markup.strong"]         = c.nano_strong,
    ["@markup.italic"]         = { fg = c.nano_faded_color, italic = true },
    ["@markup.strikethrough"]  = { fg = c.nano_faded_color, strikethrough = true },
    ["@markup.underline"]      = { link = "Underlined" },
    ["@markup.heading.1"]      = c.nano_strong,
    ["@markup.heading.2"]      = c.nano_strong,
    ["@markup.heading.3"]      = c.nano_strong,
    ["@markup.heading.4"]      = c.nano_strong,
    ["@markup.heading.5"]      = c.nano_strong,
    ["@markup.heading.6"]      = c.nano_strong,
    ["@markup.quote"]          = c.nano_faded,
    ["@markup.math"]           = c.nano_salient,
    ["@markup.link.label"]     = { link = "Tag" },
    ["@markup.link.url"]       = { fg = c.nano_salient_color, underline = true },
    ["@markup.raw"]            = c.nano_salient,
    ["@markup.raw.block"]      = c.nano_salient,
    ["@markup.list"]           = { link = "Special" },
    ["@markup.list.checked"]   = c.nano_faded,
    ["@markup.list.unchecked"] = c.nano_salient,

    -- Diff
    ["@diff.plus"]  = { link = "Added" },
    ["@diff.minus"] = { link = "Removed" },
    ["@diff.delta"] = { link = "Changed" },

    -- Tags
    ["@tag.builtin"] = c.nano_faded,
  }
end

return M
