-- Description -----------------------------------------------------------------------------
--
-- Green theme variant with nature-inspired palette with green-tinted backgrounds.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the green light variant.
---@return table # Color table for the green light variant.
function M.light()
  return build_colors({
    nano_foreground_color = "#2A3C2A",
    nano_background_color = "#F6FAF4",
    nano_highlight_color  = "#E6EFE3",
    nano_subtle_color     = "#E0EBE0",
    nano_veryfaded_color  = "#B8D0B8",
    nano_faded_color      = "#5A7C5A",
    nano_salient_color    = "#3A7A48",
    nano_strong_color     = "#182818",
    nano_popout_color     = "#9A6020",
    nano_critical_color   = "#C03020",

    ansi = {
      black   = "#3A5C3A",
      red     = "#C03830",
      green   = "#3D8B41",
      yellow  = "#8A7800",
      blue    = "#2E8A7A",
      magenta = "#5A9A20",  -- lime
      cyan    = "#1A9A88",
    },
  })
end

--- Return the color table for the green dark variant.
---@return table # Color table for the green dark variant.
function M.dark()
  return build_colors({
    nano_foreground_color = "#C8D4C4",
    nano_background_color = "#222824",
    nano_highlight_color  = "#2E3830",
    nano_subtle_color     = "#3A4A3C",
    nano_veryfaded_color  = "#4A5C46",
    nano_faded_color      = "#7A9E7C",
    nano_salient_color    = "#6BAE78",
    nano_strong_color     = "#EAF0E8",
    nano_popout_color     = "#C8A86A",
    nano_critical_color   = "#FF6A50",

    ansi = {
      black   = "#6E8A70",
      red     = "#E84040",
      green   = "#6BAE78",
      yellow  = "#D4B840",
      blue    = "#5AC8A0",
      magenta = "#90C860",  -- lime
      cyan    = "#38D4B8",
    },
  })
end

return M
