-- Variant selection through Neovim's overrideable UI interface.

local M = {}

local function set_background(background)
  -- Changing 'background' while a colorscheme is active emits ColorScheme. A preview is an
  -- in-progress choice, so listeners should only see the final accepted selection.
  local eventignore = vim.o.eventignore
  vim.o.eventignore = eventignore == "" and "ColorScheme" or eventignore .. ",ColorScheme"

  local ok, err = xpcall(function()
    vim.o.background = background
  end, debug.traceback)

  vim.o.eventignore = eventignore
  if not ok then
    error(err, 0)
  end
end

local function snapshot(theme)
  return {
    colors_name   = vim.g.colors_name,
    background    = vim.o.background,
    light_variant = theme.options.light_variant,
    dark_variant  = theme.options.dark_variant,
    transparent        = theme.options.transparent,
    transparent_floats = theme.options.transparent_floats,
    float_blend        = theme.options.float_blend,
  }
end

local function restore(theme, state)
  local previous = state.snapshot

  theme.options.light_variant = previous.light_variant
  theme.options.dark_variant = previous.dark_variant
  theme.options.transparent = previous.transparent
  theme.options.transparent_floats = previous.transparent_floats
  theme.options.float_blend = previous.float_blend

  if previous.colors_name == "nano-theme" then
    set_background(previous.background)
    theme.apply({ notify = false })
  elseif previous.colors_name and previous.colors_name ~= "" then
    -- An external scheme must be loaded through :colorscheme to restore its highlights.
    -- Its own ColorScheme event is allowed; only the following background correction is
    -- suppressed.
    local restored = pcall(vim.cmd.colorscheme, previous.colors_name)
    if not restored then
      vim.g.colors_name = previous.colors_name
    end
    set_background(previous.background)
  else
    set_background(previous.background)
    vim.g.colors_name = previous.colors_name
  end
end

--- Open the variant selector for one background mode.
---@param mode "light"|"dark"
function M.open(mode)
  local theme = require("nano-theme")
  local state = {
    mode = mode,
    snapshot = snapshot(theme),
    previewed = false,
    finished = false,
  }

  vim.ui.select(require("nano-theme.variants").names, {
    prompt = "Select " .. mode .. " variant:",
    kind = "nano-theme",
    ---@param item string
    ---@param _index integer
    preview_item = function(item, _index)
      if state.finished or item == nil then
        return
      end

      state.previewed = true
      theme.options[mode .. "_variant"] = item
      set_background(mode)
      theme.apply({ notify = false })
    end,
  }, function(choice, _index)
    if state.finished then
      return
    end
    state.finished = true

    if choice == nil then
      if state.previewed then
        restore(theme, state)
      end
      return
    end

    -- Selectors are free to ignore preview_item, so commit independently of it.
    theme.options[mode .. "_variant"] = choice
    set_background(mode)
    theme.apply({ notify = true })
  end)
end

return M
