-- Description -----------------------------------------------------------------------------
--
-- Wood theme variant. Evokes real timber: walnut heartwood in the dark, sanded oak/pine
-- in the light, with honeyed and chestnut accents and muted grain/patina syntax colors.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the wood light variant (sanded oak / pine).
---@return table # Color table for the wood light variant.
function M.light()
  return build_colors({
    nano_foreground_color = "#402F1C",  -- walnut ink
    nano_background_color = "#F6EEE0",
    nano_highlight_color  = "#EFE4D2",
    nano_subtle_color     = "#E6D8C2",
    nano_veryfaded_color  = "#CDB893",
    nano_faded_color      = "#806643",
    nano_salient_color    = "#9A5A24",  -- teak / chestnut
    nano_strong_color     = "#1F150A",
    nano_popout_color     = "#2E6A64",  -- verdigris pop
    nano_critical_color   = "#B23A16",

    ansi = {
      black   = "#5E4A32",  -- dark grain
      red     = "#A83828",  -- cherry / mahogany
      green   = "#527026",  -- olive leaf
      yellow  = "#836310",  -- amber-brown
      blue    = "#2A6086",  -- steel
      magenta = "#8A3A70",  -- aged plum
      cyan    = "#187268",  -- verdigris
    },
  })
end

--- Return the color table for the wood dark variant (walnut heartwood).
---@return table # Color table for the wood dark variant.
function M.dark()
  return build_colors({
    nano_foreground_color = "#DCC9AC",  -- oak cream
    nano_background_color = "#241A12",
    nano_highlight_color  = "#2F2318",
    nano_subtle_color     = "#3A2C1E",
    nano_veryfaded_color  = "#443422",
    nano_faded_color      = "#9C7E58",
    nano_salient_color    = "#C89050",  -- honey glow
    nano_strong_color     = "#EFE4D2",
    nano_popout_color     = "#B5744A",  -- mahogany accent
    nano_critical_color   = "#E0623A",

    ansi = {
      black   = "#8A6C4C",  -- weathered oak
      red     = "#E06A56",  -- cherry
      green   = "#7FA65A",  -- moss
      yellow  = "#D4A94C",  -- honey
      blue    = "#6A94B0",  -- faded denim
      magenta = "#BE7AAA",  -- aged plum
      cyan    = "#4FA898",  -- verdigris
    },
  })
end

return M
