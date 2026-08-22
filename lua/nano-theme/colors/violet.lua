-- Description -----------------------------------------------------------------------------
--
-- Violet theme variant with a quiet lavender palette. Light mode uses a lilac-tinted
-- near-white background with a soft violet salient and a warm amber popout. Dark mode is
-- aubergine: a violet-tinted near-black background with lavender text. It stays muted
-- where the jinx variant is electric.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the violet light variant.
---@return table # Color table for the violet light variant.
function M.light()
  return build_colors({
    nano_foreground_color = "#352E42",
    nano_background_color = "#FAF8FC",
    nano_highlight_color  = "#F1EDF7",
    nano_subtle_color     = "#E8E2F0",
    nano_veryfaded_color  = "#CFC5DC",
    nano_faded_color      = "#6F6382",
    nano_salient_color    = "#6D49A0",  -- soft violet
    nano_strong_color     = "#1F1830",
    nano_popout_color     = "#A26320",  -- warm amber
    nano_critical_color   = "#C22B36",

    ansi = {
      black   = "#4E4459",
      red     = "#B82C38",
      green   = "#3E7A48",
      yellow  = "#94701C",
      blue    = "#3E62AC",
      magenta = "#8A48A8",
      cyan    = "#2A7C8C",
    },
  })
end

--- Return the color table for the violet dark variant (aubergine).
---@return table # Color table for the violet dark variant.
function M.dark()
  return build_colors({
    nano_foreground_color = "#D3CCE1",
    nano_background_color = "#1E1A28",
    nano_highlight_color  = "#2A2438",
    nano_subtle_color     = "#383048",
    nano_veryfaded_color  = "#423A54",
    nano_faded_color      = "#968CAE",
    nano_salient_color    = "#AB8DE3",  -- lavender
    nano_strong_color     = "#EFEBF7",
    nano_popout_color     = "#D9A15C",  -- warm amber
    nano_critical_color   = "#F26459",

    ansi = {
      black   = "#685E7E",
      red     = "#E8636A",
      green   = "#76B980",
      yellow  = "#D9B162",
      blue    = "#7C98DA",
      magenta = "#B98BD9",
      cyan    = "#5AB9C9",
    },
  })
end

return M
