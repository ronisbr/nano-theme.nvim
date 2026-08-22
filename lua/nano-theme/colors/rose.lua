-- Description -----------------------------------------------------------------------------
--
-- Rose theme variant with a soft rose-quartz palette. Light mode is dawn: a warm
-- near-white background with a barely perceptible pink tint, a muted raspberry salient,
-- and a sea-glass teal popout. Dark mode is dusk: a mauve-tinted near-black background
-- with rosy text and a soft rose salient.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the rose light variant (dawn).
---@return table # Color table for the rose light variant.
function M.light()
  return build_colors({
    nano_foreground_color = "#3B3134",
    nano_background_color = "#FBF7F6",
    nano_highlight_color  = "#F3ECEB",
    nano_subtle_color     = "#EBE1E0",
    nano_veryfaded_color  = "#D5C6C6",
    nano_faded_color      = "#75636A",
    nano_salient_color    = "#A63A62",  -- muted raspberry
    nano_strong_color     = "#22191D",
    nano_popout_color     = "#2E7A70",  -- sea-glass teal
    nano_critical_color   = "#C42B3A",

    ansi = {
      black   = "#4C4146",
      red     = "#B83240",
      green   = "#3E7A50",
      yellow  = "#9A7420",
      blue    = "#38688E",
      magenta = "#A04480",
      cyan    = "#2A8084",
    },
  })
end

--- Return the color table for the rose dark variant (dusk).
---@return table # Color table for the rose dark variant.
function M.dark()
  return build_colors({
    nano_foreground_color = "#D6CBD1",
    nano_background_color = "#201A1E",
    nano_highlight_color  = "#2B242A",
    nano_subtle_color     = "#392F37",
    nano_veryfaded_color  = "#443841",
    nano_faded_color      = "#9A8A92",
    nano_salient_color    = "#D98CAC",  -- soft rose
    nano_strong_color     = "#F0E7EC",
    nano_popout_color     = "#79BCAF",  -- sea-glass teal
    nano_critical_color   = "#F26D62",

    ansi = {
      black   = "#6C5C65",
      red     = "#E86470",
      green   = "#7CB98A",
      yellow  = "#D9B064",
      blue    = "#7FA6C9",
      magenta = "#C983B4",
      cyan    = "#66B9B9",
    },
  })
end

return M
