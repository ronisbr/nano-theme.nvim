-- Description -----------------------------------------------------------------------------
--
-- Old Terminal theme variant with retro phosphor monitor palette.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors").build_colors

local M = {}

--- Return the color table for the old terminal light variant.
---@return table # Color table for the old terminal light variant.
function M.light()
  local base6   = "#3A6A3A"
  local red     = "#901808"
  local green   = "#107810"
  local yellow  = "#887800"
  local blue    = "#106050"
  local magenta = "#607800"
  local cyan    = "#107860"

  return build_colors({
    base0 = "#D8EED8",
    base1 = "#C8E4C8",
    base2 = "#B4D4B4",
    base3 = "#90B890",
    base4 = "#6E9A6E",
    base5 = "#508050",
    base6 = base6,
    base7 = "#081808",

    nano_foreground_color = "#0E400E",
    nano_background_color = "#D8EED8",
    nano_highlight_color  = "#C8E4C8",
    nano_subtle_color     = "#B4D4B4",
    nano_veryfaded_color  = "#9EC49E",
    nano_faded_color      = "#447244",
    nano_salient_color    = "#145214",
    nano_strong_color     = "#081808",
    nano_popout_color     = "#1A4A1A",
    nano_critical_color   = "#B02010",

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

--- Return the color table for the old terminal dark variant.
---@return table # Color table for the old terminal dark variant.
function M.dark()
  local base6   = "#3A7A3A"
  local red     = "#C83020"
  local green   = "#30C030"
  local yellow  = "#C8C020"
  local blue    = "#20A080"
  local magenta = "#A0C820"
  local cyan    = "#20C8A0"

  return build_colors({
    base0 = "#060E06",
    base1 = "#0C180C",
    base2 = "#122012",
    base3 = "#182E18",
    base4 = "#204020",
    base5 = "#2A5A2A",
    base6 = base6,
    base7 = "#00FF00",

    nano_foreground_color = "#80C080",
    nano_background_color = "#060E06",
    nano_highlight_color  = "#0C180C",
    nano_subtle_color     = "#122012",
    nano_veryfaded_color  = "#183018",
    nano_faded_color      = "#508050",
    nano_salient_color    = "#00AA00",
    nano_strong_color     = "#00FF00",
    nano_popout_color     = "#70C870",
    nano_critical_color   = "#FF5040",

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
