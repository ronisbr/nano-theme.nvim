-- Description -----------------------------------------------------------------------------
--
-- Orange theme variant with warm, earthy palette with orange-tinted backgrounds.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the orange light variant.
---@return table # Color table for the orange light variant.
function M.light()
  return build_colors({
    nano_foreground_color = "#3A2C18",
    nano_background_color = "#FAF6F0",
    nano_highlight_color  = "#F2EAE0",
    nano_subtle_color     = "#E8DECE",
    nano_veryfaded_color  = "#CEC0A8",
    nano_faded_color      = "#8A7058",
    nano_salient_color    = "#A05C18",
    nano_strong_color     = "#1A1208",
    nano_popout_color     = "#2E6890",
    nano_critical_color   = "#C02800",

    ansi = {
      black   = "#6A5038",
      red     = "#B82020",
      green   = "#2E7A38",
      yellow  = "#887800",
      blue    = "#1A5888",
      magenta = "#882878",
      cyan    = "#0A7070",
    },
  })
end

--- Return the color table for the orange dark variant.
---@return table # Color table for the orange dark variant.
function M.dark()
  return build_colors({
    nano_foreground_color = "#D4C8B0",
    nano_background_color = "#2C2016",
    nano_highlight_color  = "#382A1C",
    nano_subtle_color     = "#443420",
    nano_veryfaded_color  = "#4E3C28",
    nano_faded_color      = "#9A7C58",
    nano_salient_color    = "#D48A42",
    nano_strong_color     = "#F0EAE0",
    nano_popout_color     = "#6A9AB8",
    nano_critical_color   = "#F25234",

    ansi = {
      black   = "#906848",
      red     = "#E84040",
      green   = "#60B870",
      yellow  = "#DCC858",
      blue    = "#5090C8",
      magenta = "#C060B0",
      cyan    = "#30B8C0",
    },
  })
end

return M
