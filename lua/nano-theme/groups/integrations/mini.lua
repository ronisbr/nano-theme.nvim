-- Description -----------------------------------------------------------------------------
--
-- Integration with mini.
--
-- -----------------------------------------------------------------------------------------

local M = {}

function M.get()
  local c = require("nano-theme.colors").get()

  return {
    -- mini.clue -------------------------------------------------------------------------

    MiniClueDescSingle          = { link = "Normal" },
    MiniClueDescGroup           = { fg = c.nano_salient_color, bg = c.bg },
    MiniClueNextKey             = { link = "Normal" },
    MiniClueNextKeyWithPostkeys = { fg = c.nano_salient_color, bg = c.bg },
    MiniClueSeparator           = { link = "Normal" },

    -- mini.identscope -------------------------------------------------------------------

    MiniIndentscopeSymbol = c.nano_veryfaded,

    -- mini.notify -----------------------------------------------------------------------

    MiniNotifyNormal = { link = "Normal" },

    -- mini.pick -------------------------------------------------------------------------

    MiniPickMatchCurrent  = { bg = c.nano_subtle_color },
    MiniPickMatchMarked   = { fg = c.nano_salient_color, bold = true },
    MiniPickMatchRanges   = { fg = c.nano_salient_color, bold = true },
    MiniPickNormal        = { link = "Normal" },
    MiniPickPreviewLine   = { bg = c.nano_subtle_color },
    MiniPickPreviewRegion = { bg = c.nano_subtle_color },
    MiniPickPrompt        = { fg = c.nano_popout_color, bold  = true },

    -- mini.statusline -------------------------------------------------------------------

    MiniStatuslineModeCommand = { fg = c.bg, bg = c.nano_foreground_color },
    MiniStatuslineModeInsert  = { fg = c.bg, bg = c.nano_popout_color },
    MiniStatuslineModeNormal  = { fg = c.bg, bg = c.nano_faded_color },
    MiniStatuslineModeOther   = { fg = c.bg, bg = c.nano_faded_color },
    MiniStatuslineModeReplace = { fg = c.bg, bg = c.nano_critical_color },
    MiniStatuslineModeVisual  = { fg = c.bg, bg = c.nano_salient_color },

    MiniStatuslineDevinfo     = { fg = c.nano_faded_color, bg = c.nano_subtle_color },
    MiniStatuslineFileinfo    = { fg = c.fg, bg = c.nano_subtle_color },
    MiniStatuslineFilename    = { fg = c.fg, bg = c.nano_subtle_color, bold = true },
    MiniStatuslineInactive    = { fg = c.nano_faded_color, bg = c.nano_subtle_color },

    -- mini.tabline ----------------------------------------------------------------------

    MiniTablineCurrent         = { fg = c.fg, bg = c.nano_highlight_color, bold = true },
    MiniTablineVisible         = { fg = c.fg, bg = c.nano_subtle_color },
    MiniTablineHidden          = { fg = c.nano_faded_color, bg = c.nano_subtle_color, italic = true },
    MiniTablineModifiedCurrent = { fg = c.nano_salient_color, bg = c.nano_highlight_color, bold = true },
    MiniTablineModifiedVisible = { fg = c.nano_salient_color, bg = c.nano_subtle_color },
    MiniTablineModifiedHidden  = { fg = c.nano_salient_color, bg = c.nano_subtle_color, italic = true },
    MiniTablineFill            = { fg = c.fg, bg = c.nano_subtle_color },
    MiniTablineTabpagesection  = { fg = c.nano_faded_color, bg = c.nano_subtle_color },

    -- mini.trailspace -------------------------------------------------------------------

    MiniTrailspace = { fg = c.bg, bg = c.nano_subtle_color },
  }
end

return M
