-- Description -----------------------------------------------------------------------------
--
-- Integration with treesitter.
--
-- -----------------------------------------------------------------------------------------

local M = {}

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
    ["@function.call"]    = c.nano_foreground,
    ["@function.macro"]   = { link = "Function" },
    ["@method"]           = { link = "Function" },
    ["@method.call"]      = c.nano_foreground,
    ["@parameter"]        = c.nano_forground,

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
    ["@text.diff.add"]         = { link = "diffAdded" },
    ["@text.diff.delete"]      = { link = "diffRemoved" },
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
    ["@text.underline"]        = { link = "Underline" },
    ["@text.uri"]              = { fg = c.nano_salient_color, underline = true },
    ["@text.warning"]          = c.nano_popout,

    -- Tags --------------------------------------------------------------------------------

    ["@tag"] = c.nano_faded,
    ["@tag.attribute"] = c.nano_faded,
    ["@tag.delimiter"] = c.nano_faded,

    -- Configurations Specific to Languages ------------------------------------------------

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
  }
end

return M
