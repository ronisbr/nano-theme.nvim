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
  local base6   = "#5E4A32"  -- dark grain
  local red     = "#A83828"  -- cherry / mahogany
  local green   = "#527026"  -- olive leaf
  local yellow  = "#836310"  -- amber-brown
  local blue    = "#2A6086"  -- steel
  local magenta = "#8A3A70"  -- aged plum
  local cyan    = "#187268"  -- verdigris

  return build_colors({
    base0 = "#F6EEE0",  -- sanded pine
    base1 = "#EFE4D2",
    base2 = "#E6D8C2",
    base3 = "#D2BE9E",
    base4 = "#B49E78",
    base5 = "#927C58",
    base6 = base6,
    base7 = "#1F150A",

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

    terminal_color_0  = base6,
    terminal_color_1  = red,
    terminal_color_2  = green,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = magenta,
    terminal_color_6  = cyan,
    terminal_color_8  = base6,
    terminal_color_9  = red,
    terminal_color_10 = green,
    terminal_color_11 = yellow,
    terminal_color_12 = blue,
    terminal_color_13 = magenta,
    terminal_color_14 = cyan,
  })
end

--- Return the color table for the wood dark variant (walnut heartwood).
---@return table # Color table for the wood dark variant.
function M.dark()
  local base6   = "#8A6C4C"  -- weathered oak
  local red     = "#E06A56"  -- cherry
  local green   = "#7FA65A"  -- moss
  local yellow  = "#D4A94C"  -- honey
  local blue    = "#6A94B0"  -- faded denim
  local magenta = "#BE7AAA"  -- aged plum
  local cyan    = "#4FA898"  -- verdigris

  return build_colors({
    base0 = "#241A12",  -- espresso walnut
    base1 = "#2F2318",
    base2 = "#3A2C1E",
    base3 = "#463624",
    base4 = "#574430",
    base5 = "#6B543C",
    base6 = base6,
    base7 = "#EFE4D2",

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

    terminal_color_0  = base6,
    terminal_color_1  = red,
    terminal_color_2  = green,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = magenta,
    terminal_color_6  = cyan,
    terminal_color_8  = base6,
    terminal_color_9  = red,
    terminal_color_10 = green,
    terminal_color_11 = yellow,
    terminal_color_12 = blue,
    terminal_color_13 = magenta,
    terminal_color_14 = cyan,
  })
end

return M
