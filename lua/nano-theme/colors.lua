-- Description -----------------------------------------------------------------------------
--
-- Set the colors of the theme.
--
-- -----------------------------------------------------------------------------------------

local M = {}

--------------------------------------------------------------------------------------------
--                                   Private Functions                                    --
--------------------------------------------------------------------------------------------

--- Build the full color table from the raw color values and terminal color mapping.
---@param raw table Table of raw hex color strings and terminal color values.
---@return table # Color table with named semantic colors, highlight decorations, and
---                terminal colors.
function M.build_colors(raw)
  return {
    -- Base Ramp ---------------------------------------------------------------------------

    base0 = raw.base0,
    base1 = raw.base1,
    base2 = raw.base2,
    base3 = raw.base3,
    base4 = raw.base4,
    base5 = raw.base5,
    base6 = raw.base6,
    base7 = raw.base7,

    -- Colors ------------------------------------------------------------------------------
    nano_foreground_color = raw.nano_foreground_color,
    nano_background_color = raw.nano_background_color,
    nano_highlight_color  = raw.nano_highlight_color,
    nano_subtle_color     = raw.nano_subtle_color,
    nano_faded_color      = raw.nano_faded_color,
    nano_veryfaded_color  = raw.nano_veryfaded_color,
    nano_salient_color    = raw.nano_salient_color,
    nano_strong_color     = raw.nano_strong_color,
    nano_popout_color     = raw.nano_popout_color,
    nano_critical_color   = raw.nano_critical_color,

    bg     = raw.nano_background_color,
    fg     = raw.nano_foreground_color,
    bg_alt = raw.nano_highlight_color,
    fg_alt = raw.nano_foreground_color,

    -- Highlight Decoration ----------------------------------------------------------------

    nano_foreground = { fg = raw.nano_foreground_color },
    nano_background = { fg = raw.nano_background_color },
    nano_highlight  = { fg = raw.nano_highlight_color },
    nano_subtle     = { fg = raw.nano_subtle_color },
    nano_faded      = { fg = raw.nano_faded_color },
    nano_veryfaded  = { fg = raw.nano_veryfaded_color },
    nano_salient    = { fg = raw.nano_salient_color },
    nano_strong     = { fg = raw.nano_strong_color, bold = true },
    nano_popout     = { fg = raw.nano_popout_color },
    nano_critical   = { fg = raw.nano_critical_color },

    -- Terminal Colors ---------------------------------------------------------------------

    terminal_color_0  = raw.terminal_color_0,
    terminal_color_1  = raw.terminal_color_1,
    terminal_color_2  = raw.terminal_color_2,
    terminal_color_3  = raw.terminal_color_3,
    terminal_color_4  = raw.terminal_color_4,
    terminal_color_5  = raw.terminal_color_5,
    terminal_color_6  = raw.terminal_color_6,
    terminal_color_7  = raw.nano_foreground_color,
    terminal_color_8  = raw.terminal_color_8,
    terminal_color_9  = raw.terminal_color_9,
    terminal_color_10 = raw.terminal_color_10,
    terminal_color_11 = raw.terminal_color_11,
    terminal_color_12 = raw.terminal_color_12,
    terminal_color_13 = raw.terminal_color_13,
    terminal_color_14 = raw.terminal_color_14,
    terminal_color_15 = raw.nano_foreground_color,
  }
end

--------------------------------------------------------------------------------------------
--                                   Variant Imports                                      --
--------------------------------------------------------------------------------------------

local amber        = require("nano-theme.colors.amber")
local blue         = require("nano-theme.colors.blue")
local default      = require("nano-theme.colors.default")
local gilded       = require("nano-theme.colors.gilded")
local gray         = require("nano-theme.colors.gray")
local green        = require("nano-theme.colors.green")
local ink          = require("nano-theme.colors.ink")
local jinx         = require("nano-theme.colors.jinx")
local old_terminal = require("nano-theme.colors.old_terminal")
local orange       = require("nano-theme.colors.orange")
local rougier      = require("nano-theme.colors.rougier")

--------------------------------------------------------------------------------------------
--                                    Public Functions                                    --
--------------------------------------------------------------------------------------------

-- Variant dispatch tables.
local light_variants = {
  amber        = amber.light,
  blue         = blue.light,
  default      = default.light,
  gilded       = gilded.light,
  gray         = gray.light,
  green        = green.light,
  ink          = ink.light,
  jinx         = jinx.light,
  old_terminal = old_terminal.light,
  orange       = orange.light,
  rougier      = rougier.light,
}

local dark_variants = {
  amber        = amber.dark,
  blue         = blue.dark,
  default      = default.dark,
  gilded       = gilded.dark,
  gray         = gray.dark,
  green        = green.dark,
  ink          = ink.dark,
  jinx         = jinx.dark,
  old_terminal = old_terminal.dark,
  orange       = orange.dark,
  rougier      = rougier.dark,
}

--- Return the color table for the currently active background and variant.
---@return table # Color table for the active theme variant.
function M.get()
  local opts     = require("nano-theme").options
  local is_light = vim.o.background == "light"

  local variant  = is_light and opts.light_variant or opts.dark_variant
  local variants = is_light and light_variants or dark_variants
  local fn       = variants[variant] or variants["default"]

  return fn()
end

return M
