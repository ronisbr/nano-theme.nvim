-- Description -----------------------------------------------------------------------------
--
-- Set the colors of the theme.
--
-- -----------------------------------------------------------------------------------------

local M = {}

--------------------------------------------------------------------------------------------
--                                   Private Functions                                    --
--------------------------------------------------------------------------------------------

-- Build the full color table from the raw color values and terminal color mapping.
local function build_colors(raw)
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

-- Default Variant -------------------------------------------------------------------------

local function default_light()
  local base6   = "#484840"
  local red     = "#C03830"
  local green   = "#3D8B41"
  local yellow  = "#C49A00"
  local blue    = "#2E6FA3"
  local magenta = "#913AA0"
  local cyan    = "#1A8F9E"

  return build_colors({
    base0 = "#FAFAF7",
    base1 = "#F2F2ED",
    base2 = "#E8E8E2",
    base3 = "#D0D0C8",
    base4 = "#A8A8A0",
    base5 = "#787870",
    base6 = base6,
    base7 = "#1E1E1A",

    nano_foreground_color = "#3A3D38",
    nano_background_color = "#FAFAF7",
    nano_highlight_color  = "#F2F2ED",
    nano_subtle_color     = "#E8E8E2",
    nano_veryfaded_color  = "#C4C4BC",
    nano_faded_color      = "#807E78",
    nano_salient_color    = "#6E4A85",
    nano_strong_color     = "#252520",
    nano_popout_color     = "#E8865A",
    nano_critical_color   = "#E53500",

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

local function default_dark()
  local base6   = "#908E88"
  local red     = "#E84040"
  local green   = "#66BB6A"
  local yellow  = "#E2C12F"
  local blue    = "#42A5F5"
  local magenta = "#B455C8"
  local cyan    = "#26C6DA"

  return build_colors({
    base0 = "#262624",
    base1 = "#2E2E2A",
    base2 = "#2E2E2C",
    base3 = "#3A3A38",
    base4 = "#484846",
    base5 = "#5C5C5A",
    base6 = base6,
    base7 = "#D4D0C8",

    nano_foreground_color = "#D4D0CA",
    nano_background_color = "#262624",
    nano_highlight_color  = "#343432",
    nano_subtle_color     = "#484846",
    nano_veryfaded_color  = "#4E4E4C",
    nano_faded_color      = "#83837F",
    nano_salient_color    = "#7A9DB8",
    nano_strong_color     = "#F0EFEB",
    nano_popout_color     = "#D08770",
    nano_critical_color   = "#E8C46A",

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

-- Black-White Variant ---------------------------------------------------------------------

local function black_white_dark()
  local base6   = "#707070"
  local red     = "#E84040"
  local green   = "#50B060"
  local yellow  = "#D4B030"
  local blue    = "#5090D0"
  local magenta = "#A050C0"
  local cyan    = "#20B0C8"

  return build_colors({
    base0 = "#0E0E10",
    base1 = "#1A1A1C",
    base2 = "#242426",
    base3 = "#303032",
    base4 = "#484848",
    base5 = "#585858",
    base6 = base6,
    base7 = "#F0F0EC",

    nano_foreground_color = "#C8C8C0",
    nano_background_color = "#0E0E10",
    nano_highlight_color  = "#1A1A1C",
    nano_subtle_color     = "#242426",
    nano_veryfaded_color  = "#2E2E30",
    nano_faded_color      = "#707070",
    nano_salient_color    = "#D4924A",
    nano_strong_color     = "#F0F0EC",
    nano_popout_color     = "#78AACC",
    nano_critical_color   = "#E05030",

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

local function black_white_light()
  local base6   = "#484840"
  local red     = "#B82020"
  local green   = "#2E7A38"
  local yellow  = "#A88000"
  local blue    = "#1E5490"
  local magenta = "#7A2888"
  local cyan    = "#0E8090"

  return build_colors({
    base0 = "#F8F8F4",
    base1 = "#F0F0EC",
    base2 = "#E4E4DE",
    base3 = "#C8C8C0",
    base4 = "#A0A098",
    base5 = "#707070",
    base6 = base6,
    base7 = "#141414",

    nano_foreground_color = "#1A1A18",
    nano_background_color = "#F8F8F4",
    nano_highlight_color  = "#F0F0EC",
    nano_subtle_color     = "#E4E4DE",
    nano_veryfaded_color  = "#C0C0B8",
    nano_faded_color      = "#848480",
    nano_salient_color    = "#A06020",
    nano_strong_color     = "#141414",
    nano_popout_color     = "#2E5E8A",
    nano_critical_color   = "#B82010",

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

-- Blue Variant ----------------------------------------------------------------------------

local function blue_light()
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

local function blue_dark()
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

-- Green Variant ---------------------------------------------------------------------------

local function green_light()
  local base6   = "#3A5C3A"
  local red     = "#C03830"
  local green   = "#3D8B41"
  local yellow  = "#8A7800"
  local blue    = "#2E8A7A"
  local lime    = "#5A9A20"
  local cyan    = "#1A9A88"

  return build_colors({
    base0 = "#F6FAF4",
    base1 = "#EDF4EB",
    base2 = "#E0EBE0",
    base3 = "#C4D8C4",
    base4 = "#9AB89A",
    base5 = "#6A8C6A",
    base6 = base6,
    base7 = "#182818",

    nano_foreground_color = "#2A3C2A",
    nano_background_color = "#F6FAF4",
    nano_highlight_color  = "#EDF4EB",
    nano_subtle_color     = "#E0EBE0",
    nano_veryfaded_color  = "#B8D0B8",
    nano_faded_color      = "#6A8C6A",
    nano_salient_color    = "#3A7A48",
    nano_strong_color     = "#182818",
    nano_popout_color     = "#B87830",
    nano_critical_color   = "#C03020",

    terminal_color_0  = base6,
    terminal_color_1  = red,
    terminal_color_2  = green,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = lime,
    terminal_color_6  = cyan,
    terminal_color_8  = base6,
    terminal_color_9  = red,
    terminal_color_10 = green,
    terminal_color_11 = yellow,
    terminal_color_12 = blue,
    terminal_color_13 = lime,
    terminal_color_14 = cyan,
  })
end

local function green_dark()
  local base6   = "#6E8A70"
  local red     = "#E84040"
  local green   = "#6BAE78"
  local yellow  = "#D4B840"
  local blue    = "#5AC8A0"
  local lime    = "#90C860"
  local cyan    = "#38D4B8"

  return build_colors({
    base0 = "#222824",
    base1 = "#2E3830",
    base2 = "#303C32",
    base3 = "#3A4A3C",
    base4 = "#485A48",
    base5 = "#5A7058",
    base6 = base6,
    base7 = "#C8D4C4",

    nano_foreground_color = "#C8D4C4",
    nano_background_color = "#222824",
    nano_highlight_color  = "#2E3830",
    nano_subtle_color     = "#3A4A3C",
    nano_veryfaded_color  = "#5A7058",
    nano_faded_color      = "#7A9E7C",
    nano_salient_color    = "#6BAE78",
    nano_strong_color     = "#EAF0E8",
    nano_popout_color     = "#C8A86A",
    nano_critical_color   = "#E8604A",

    terminal_color_0  = base6,
    terminal_color_1  = red,
    terminal_color_2  = green,
    terminal_color_3  = yellow,
    terminal_color_4  = blue,
    terminal_color_5  = lime,
    terminal_color_6  = cyan,
    terminal_color_8  = base6,
    terminal_color_9  = red,
    terminal_color_10 = green,
    terminal_color_11 = yellow,
    terminal_color_12 = blue,
    terminal_color_13 = lime,
    terminal_color_14 = cyan,
  })
end

-- Gray Variant  ---------------------------------------------------------------------------

local function gray_dark()
  local base6   = "#686868"
  local red     = "#E84040"
  local green   = "#50B060"
  local yellow  = "#D4B030"
  local blue    = "#5090D0"
  local magenta = "#A050C0"
  local cyan    = "#20B0C8"

  return build_colors({
    base0 = "#1C1C1C",
    base1 = "#262626",
    base2 = "#303030",
    base3 = "#3C3C3C",
    base4 = "#505050",
    base5 = "#585858",
    base6 = base6,
    base7 = "#ECECEC",

    nano_foreground_color = "#C0C0C0",
    nano_background_color = "#1C1C1C",
    nano_highlight_color  = "#262626",
    nano_subtle_color     = "#303030",
    nano_veryfaded_color  = "#383838",
    nano_faded_color      = "#686868",
    nano_salient_color    = "#909090",
    nano_strong_color     = "#ECECEC",
    nano_popout_color     = "#A8A8A8",
    nano_critical_color   = "#E04020",

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

local function gray_light()
  local base6   = "#606060"
  local red     = "#B82020"
  local green   = "#2E7A38"
  local yellow  = "#A88000"
  local blue    = "#1E5490"
  local magenta = "#7A2888"
  local cyan    = "#0E8090"

  return build_colors({
    base0 = "#F6F6F4",
    base1 = "#EEEEEC",
    base2 = "#E2E2E0",
    base3 = "#C8C8C8",
    base4 = "#A4A4A4",
    base5 = "#787878",
    base6 = base6,
    base7 = "#101010",

    nano_foreground_color = "#1C1C1C",
    nano_background_color = "#F6F6F4",
    nano_highlight_color  = "#EEEEEC",
    nano_subtle_color     = "#E2E2E0",
    nano_veryfaded_color  = "#C4C4C4",
    nano_faded_color      = "#888888",
    nano_salient_color    = "#404040",
    nano_strong_color     = "#101010",
    nano_popout_color     = "#606060",
    nano_critical_color   = "#CC2800",

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

--------------------------------------------------------------------------------------------
--                                    Public Functions                                    --
--------------------------------------------------------------------------------------------

-- Variant dispatch tables.
local light_variants = {
  default     = default_light,
  black_white = black_white_light,
  blue        = blue_light,
  green       = green_light,
  gray        = gray_light,
}

local dark_variants = {
  default     = default_dark,
  black_white = black_white_dark,
  blue        = blue_dark,
  green       = green_dark,
  gray        = gray_dark,
}

function M.get()
  local opts     = require("nano-theme").options
  local is_light = vim.o.background == "light"

  local variant  = is_light and opts.light_variant or opts.dark_variant
  local variants = is_light and light_variants or dark_variants
  local fn       = variants[variant] or variants["default"]

  return fn()
end

return M
