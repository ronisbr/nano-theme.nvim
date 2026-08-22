-- Description -----------------------------------------------------------------------------
--
-- Ocean theme variant with a deep marine palette. Light mode is sea glass: a cool
-- aqua-tinted background with deep teal ink and a rust popout. Dark mode is deep sea: a
-- blue-green abyss background with a bright cyan-teal salient and a sandy amber popout.
-- It leans teal where the blue variant leans steel.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the ocean light variant (sea glass).
---@return table # Color table for the ocean light variant.
function M.light()
  return build_colors({
    nano_foreground_color = "#22383B",
    nano_background_color = "#F3F8F7",
    nano_highlight_color  = "#E7F0EE",
    nano_subtle_color     = "#DCE9E7",
    nano_veryfaded_color  = "#B2CDCB",
    nano_faded_color      = "#4A7376",
    nano_salient_color    = "#0F6E7C",  -- deep teal
    nano_strong_color     = "#0E2124",
    nano_popout_color     = "#A05A28",  -- rust
    nano_critical_color   = "#C0391E",

    ansi = {
      black   = "#375255",
      red     = "#B83228",
      green   = "#2E7A48",
      yellow  = "#8A7010",
      blue    = "#20648E",
      magenta = "#7A4890",
      cyan    = "#0E7C88",
    },
  })
end

--- Return the color table for the ocean dark variant (deep sea).
---@return table # Color table for the ocean dark variant.
function M.dark()
  return build_colors({
    nano_foreground_color = "#C3D7D5",
    nano_background_color = "#101E20",
    nano_highlight_color  = "#1B2C2F",
    nano_subtle_color     = "#27393D",
    nano_veryfaded_color  = "#2F464A",
    nano_faded_color      = "#729B9E",
    nano_salient_color    = "#55BEC8",  -- cyan-teal
    nano_strong_color     = "#E9F2F1",
    nano_popout_color     = "#DFA05F",  -- sandy amber
    nano_critical_color   = "#FF6952",

    ansi = {
      black   = "#5A7E80",
      red     = "#E86050",
      green   = "#62B986",
      yellow  = "#D8B85A",
      blue    = "#58A2D2",
      magenta = "#A98BC9",
      cyan    = "#4AC9C9",
    },
  })
end

return M
