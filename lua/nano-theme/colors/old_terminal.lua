-- Description -----------------------------------------------------------------------------
--
-- Old Terminal theme variant with retro phosphor monitor palette.
--
-- -----------------------------------------------------------------------------------------

local build_colors = require("nano-theme.colors.utils").build_colors

local M = {}

--- Return the color table for the old terminal light variant.
---@return table # Color table for the old terminal light variant.
function M.light()
  return build_colors({
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

    ansi = {
      black   = "#3A6A3A",
      red     = "#901808",
      green   = "#107810",
      yellow  = "#887800",
      blue    = "#106050",
      magenta = "#607800",
      cyan    = "#107860",
    },
  })
end

--- Return the color table for the old terminal dark variant.
---@return table # Color table for the old terminal dark variant.
function M.dark()
  return build_colors({
    nano_foreground_color = "#80C080",
    nano_background_color = "#060E06",
    nano_highlight_color  = "#0E200E",
    nano_subtle_color     = "#122012",
    nano_veryfaded_color  = "#183018",
    nano_faded_color      = "#508050",
    nano_salient_color    = "#00AA00",
    nano_strong_color     = "#00FF00",
    nano_popout_color     = "#70C870",
    nano_critical_color   = "#FF5040",

    ansi = {
      black   = "#3A7A3A",
      red     = "#C83020",
      green   = "#30C030",
      yellow  = "#C8C020",
      blue    = "#20A080",
      magenta = "#A0C820",
      cyan    = "#20C8A0",
    },
  })
end

return M
