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
---@return table Color table with named semantic colors, highlight decorations, and terminal
---              colors.
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

-- Blue Variant ----------------------------------------------------------------------------

--- Return the color table for the blue light variant.
---@return table Color table for the blue light variant.
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

--- Return the color table for the blue dark variant.
---@return table Color table for the blue dark variant.
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

-- Default Variant -------------------------------------------------------------------------

--- Return the color table for the default light variant.
---@return table Color table for the default light variant.
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

--- Return the color table for the default dark variant.
---@return table Color table for the default dark variant.
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

-- Gray Variant  ---------------------------------------------------------------------------

--- Return the color table for the gray light variant.
---@return table Color table for the gray light variant.
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

--- Return the color table for the gray dark variant.
---@return table Color table for the gray dark variant.
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

-- Green Variant ---------------------------------------------------------------------------

--- Return the color table for the green light variant.
---@return table Color table for the green light variant.
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

--- Return the color table for the green dark variant.
---@return table Color table for the green dark variant.
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

-- Ink Variant -----------------------------------------------------------------------------

--- Return the color table for the ink light variant.
---@return table Color table for the ink light variant.
local function ink_light()
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

--- Return the color table for the ink dark variant.
---@return table Color table for the ink dark variant.
local function ink_dark()
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

-- Orange Variant --------------------------------------------------------------------------

--- Return the color table for the orange light variant.
---@return table Color table for the orange light variant.
local function orange_light()
  local base6   = "#6A5038"
  local red     = "#B82020"
  local green   = "#2E7A38"
  local yellow  = "#887800"
  local blue    = "#1A5888"
  local magenta = "#882878"
  local cyan    = "#0A7070"

  return build_colors({
    base0 = "#FAF6F0",
    base1 = "#F2EAE0",
    base2 = "#E8DECE",
    base3 = "#D4C4A8",
    base4 = "#B8A888",
    base5 = "#9A8868",
    base6 = base6,
    base7 = "#1A1208",

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

--- Return the color table for the orange dark variant.
---@return table Color table for the orange dark variant.
local function orange_dark()
  local base6   = "#906848"
  local red     = "#E84040"
  local green   = "#60B870"
  local yellow  = "#DCC858"
  local blue    = "#5090C8"
  local magenta = "#C060B0"
  local cyan    = "#30B8C0"

  return build_colors({
    base0 = "#2C2016",
    base1 = "#382A1C",
    base2 = "#443420",
    base3 = "#503E28",
    base4 = "#604830",
    base5 = "#705840",
    base6 = base6,
    base7 = "#F0EAE0",

    nano_foreground_color = "#D4C8B0",
    nano_background_color = "#2C2016",
    nano_highlight_color  = "#382A1C",
    nano_subtle_color     = "#443420",
    nano_veryfaded_color  = "#4E3C28",
    nano_faded_color      = "#7A6040",
    nano_salient_color    = "#D48A42",
    nano_strong_color     = "#F0EAE0",
    nano_popout_color     = "#6A9AB8",
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

-- Rougier's Variant -----------------------------------------------------------------------

--- Return the color table for th Rougier's light variant, the original variant of NANO
--- theme.
---@return table Color table for the rougier's light variant.
local function rougier_light()
  local base6   = "#546E7A"  -- Blue Grey / L600
  local red     = "#B71C1C"  -- Material Red / L900
  local green   = "#2E7D32"  -- Material Green / L800
  local yellow  = "#F9A825"  -- Material Amber / L800
  local blue    = "#1565C0"  -- Material Blue / L800
  local magenta = "#6A1B9A"  -- Material Purple / L800
  local cyan    = "#00838F"  -- Material Cyan / L800
  local nano_foreground_color = "#37474F"  -- Blue Grey / L800

  return build_colors({
    base0 = "#FFFFFF",  -- White
    base1 = "#FAFAFA",  -- Very Light Grey
    base2 = "#ECEFF1",  -- Blue Grey / L50
    base3 = "#CFD8DC",  -- Blue Grey / L100
    base4 = "#B0BEC5",  -- Blue Grey / L200
    base5 = "#90A4AE",  -- Blue Grey / L300
    base6 = base6,
    base7 = "#263238",  -- Blue Grey / L900

    nano_foreground_color = nano_foreground_color,
    nano_background_color = "#FFFFFF",
    nano_highlight_color  = "#FAFAFA",
    nano_subtle_color     = "#ECEFF1",
    nano_veryfaded_color  = "#CFD8DC",
    nano_faded_color      = "#90A4AE",  -- Blue Grey / L300
    nano_salient_color    = "#673AB7",  -- Deep Purple / L500
    nano_strong_color     = "#263238",  -- Blue Grey / L900
    nano_popout_color     = "#FFAB91",  -- Deep Orange / L200
    nano_critical_color   = "#FF6F00",  -- Amber / L900

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

--- Return the color table for th Rougier's dark variant, the original variant of NANO
--- theme.
---@return table Color table for the rougier's dark variant.
local function rougier_dark()
  local base6   = "#7B88A1"  -- Nord between Polar Night and Snow Storm
  local red     = "#BF616A"  -- Nord Aurora / nord11
  local green   = "#A3BE8C"  -- Nord Aurora / nord14
  local yellow  = "#EBCB8B"  -- Nord Aurora / nord13
  local blue    = "#81A1C1"  -- Nord Frost  / nord9
  local magenta = "#B48EAD"  -- Nord Aurora / nord15
  local cyan    = "#88C0D0"  -- Nord Frost  / nord8
  local nano_foreground_color = "#ECEFF4"  -- Nord Snow Storm 3 / nord6

  return build_colors({
    base0 = "#2E3440",  -- Nord Polar Night 0 / nord0
    base1 = "#3B4252",  -- Nord Polar Night 1 / nord1
    base2 = "#434C5E",  -- Nord Polar Night 2 / nord2
    base3 = "#4C566A",  -- Nord Polar Night 3 / nord3
    base4 = "#D8DEE9",  -- Nord Snow Storm 1  / nord4
    base5 = "#E5E9F0",  -- Nord Snow Storm 2  / nord5
    base6 = base6,
    base7 = "#ECEFF4",  -- Nord Snow Storm 3  / nord6

    nano_foreground_color = nano_foreground_color,
    nano_background_color = "#2E3440",  -- nord0
    nano_highlight_color  = "#3B4252",  -- nord1
    nano_subtle_color     = "#434C5E",  -- nord2
    nano_veryfaded_color  = "#4C566A",  -- nord3
    nano_faded_color      = "#677691",
    nano_salient_color    = "#81A1C1",  -- Nord Frost / nord9
    nano_strong_color     = "#ECEFF4",  -- nord6
    nano_popout_color     = "#D08770",  -- Nord Aurora / nord12
    nano_critical_color   = "#EBCB8B",  -- Nord Aurora / nord13

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
  blue     = blue_light,
  default  = default_light,
  gray     = gray_light,
  green    = green_light,
  ink      = ink_light,
  orange   = orange_light,
  rougier  = rougier_light,
}

local dark_variants = {
  blue     = blue_dark,
  default  = default_dark,
  gray     = gray_dark,
  green    = green_dark,
  ink      = ink_dark,
  orange   = orange_dark,
  rougier  = rougier_dark,
}

--- Return the color table for the currently active background and variant.
---@return table Color table for the active theme variant.
function M.get()
  local opts     = require("nano-theme").options
  local is_light = vim.o.background == "light"

  local variant  = is_light and opts.light_variant or opts.dark_variant
  local variants = is_light and light_variants or dark_variants
  local fn       = variants[variant] or variants["default"]

  return fn()
end

return M
