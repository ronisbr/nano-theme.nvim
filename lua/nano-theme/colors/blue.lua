-- Description -----------------------------------------------------------------------------
--
-- Blue theme variant with cool, steel-blue tinted palette.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the blue light variant.
---@return table # Color table for the blue light variant.
function M.light()
  local base6   = "#384858"
  local red     = "#C02818"
  local ice     = "#0F7A60"
  local yellow  = "#A07000"
  local blue    = "#1E6AA8"
  local indigo  = "#4840A8"
  local cyan    = "#1A8AA8"

  return build_colors({
    base0 = "#F4F6FA",
    base1 = "#EAEEf4",
    base2 = "#DDE4EE",
    base3 = "#C0CCDC",
    base4 = "#96A8C0",
    base5 = "#607888",
    base6 = base6,
    base7 = "#141E2C",

    nano_foreground_color = "#243040",
    nano_background_color = "#F4F6FA",
    nano_highlight_color  = "#EAEEf4",
    nano_subtle_color     = "#DDE4EE",
    nano_veryfaded_color  = "#B0C0D4",
    nano_faded_color      = "#5A7898",
    nano_salient_color    = "#1E6AA8",
    nano_strong_color     = "#101C2C",
    nano_popout_color     = "#A07000",
    nano_critical_color   = "#C02818",

    terminal_color_0  = base6,
    terminal_color_1  = red,
    terminal_color_2  = ice,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = indigo,
    terminal_color_6  = cyan,
    terminal_color_8  = base6,
    terminal_color_9  = red,
    terminal_color_10 = ice,
    terminal_color_11 = yellow,
    terminal_color_12 = blue,
    terminal_color_13 = indigo,
    terminal_color_14 = cyan,
  })
end

--- Return the color table for the blue dark variant.
---@return table # Color table for the blue dark variant.
function M.dark()
  local base6   = "#5A7A98"
  local red     = "#F06040"
  local ice     = "#38C8E8"
  local yellow  = "#E8A838"
  local blue    = "#5AA0D0"
  local indigo  = "#9E8EE0"
  local cyan    = "#4AB8D8"

  return build_colors({
    base0 = "#1E2430",
    base1 = "#28303E",
    base2 = "#2E3848",
    base3 = "#333E50",
    base4 = "#405060",
    base5 = "#526070",
    base6 = base6,
    base7 = "#C4CED8",

    nano_foreground_color = "#C4CED8",
    nano_background_color = "#1E2430",
    nano_highlight_color  = "#28303E",
    nano_subtle_color     = "#333E50",
    nano_veryfaded_color  = "#3C4E62",
    nano_faded_color      = "#6A8AAA",
    nano_salient_color    = "#5AA0D0",
    nano_strong_color     = "#E8EEF4",
    nano_popout_color     = "#E8A838",
    nano_critical_color   = "#F06040",

    terminal_color_0  = base6,
    terminal_color_1  = red,
    terminal_color_2  = ice,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = indigo,
    terminal_color_6  = cyan,
    terminal_color_8  = base6,
    terminal_color_9  = red,
    terminal_color_10 = ice,
    terminal_color_11 = yellow,
    terminal_color_12 = blue,
    terminal_color_13 = indigo,
    terminal_color_14 = cyan,
  })
end

return M
