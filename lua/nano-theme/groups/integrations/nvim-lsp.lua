-- Description -----------------------------------------------------------------------------
--
-- Integration with the built-in LSP client: diagnostics, references, inlay hints, and
-- semantic tokens.
--
-- -----------------------------------------------------------------------------------------

local M = {}

--- Return the highlight group table for the built-in LSP integration.
---@return table # Map of LSP highlight group names to their attribute tables.
function M.get()
  local c = require("nano-theme.colors").get()

  return {
    -- Diagnostics -------------------------------------------------------------------------

    DiagnosticError = c.nano_critical,
    DiagnosticWarn  = c.nano_popout,
    DiagnosticInfo  = c.nano_faded,
    DiagnosticHint  = c.nano_faded,
    DiagnosticOk    = c.nano_faded,

    DiagnosticVirtualTextError = { link = "DiagnosticError" },
    DiagnosticVirtualTextWarn  = { link = "DiagnosticWarn" },
    DiagnosticVirtualTextInfo  = { link = "DiagnosticInfo" },
    DiagnosticVirtualTextHint  = { link = "DiagnosticHint" },
    DiagnosticVirtualTextOk    = { link = "DiagnosticOk" },

    DiagnosticUnderlineError = { undercurl = true, sp = c.nano_critical_color },
    DiagnosticUnderlineWarn  = { undercurl = true, sp = c.nano_popout_color },
    DiagnosticUnderlineInfo  = { undercurl = true, sp = c.nano_faded_color },
    DiagnosticUnderlineHint  = { undercurl = true, sp = c.nano_faded_color },
    DiagnosticUnderlineOk    = { undercurl = true, sp = c.nano_faded_color },

    DiagnosticDeprecated  = { strikethrough = true, sp = c.nano_faded_color },
    DiagnosticUnnecessary = { fg = c.nano_faded_color },

    -- LSP Document Features ---------------------------------------------------------------

    LspCodeLens                 = { link = "NonText" },
    LspInlayHint                = { fg = c.nano_faded_color, italic = true },
    LspReferenceRead            = { bg = c.nano_highlight_color },
    LspReferenceText            = { bg = c.nano_highlight_color },
    LspReferenceWrite           = { bg = c.nano_subtle_color },
    LspSignatureActiveParameter = { bg = c.nano_subtle_color, bold = true },

    -- Semantic Tokens ---------------------------------------------------------------------

    ["@lsp.type.boolean"]         = { link = "@boolean" },
    ["@lsp.type.builtinType"]     = { link = "@type.builtin" },
    ["@lsp.type.comment"]         = { link = "@comment" },
    ["@lsp.type.decorator"]       = { link = "@attribute" },
    ["@lsp.type.enum"]            = { link = "@type" },
    ["@lsp.type.enumMember"]      = { link = "@constant" },
    ["@lsp.type.escapeSequence"]  = { link = "@string.escape" },
    ["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
    ["@lsp.type.interface"]       = { link = "@type" },
    ["@lsp.type.keyword"]         = { link = "@keyword" },
    ["@lsp.type.macro"]           = { link = "@function.macro" },
    ["@lsp.type.namespace"]       = { link = "@module" },
    ["@lsp.type.number"]          = { link = "@number" },
    ["@lsp.type.operator"]        = { link = "@operator" },
    ["@lsp.type.parameter"]       = { link = "@variable.parameter" },
    ["@lsp.type.property"]        = { link = "@property" },
    ["@lsp.type.selfKeyword"]     = { link = "@variable.builtin" },
    ["@lsp.type.string"]          = { link = "@string" },
    ["@lsp.type.typeAlias"]       = { link = "@type.definition" },
    ["@lsp.type.variable"]        = { link = "@variable" },

    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"]   = { link = "@function.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
  }
end

return M
