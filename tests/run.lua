local root = vim.fn.getcwd()
vim.opt.runtimepath:prepend(root)

local assertions = 0

local function assert_true(value, message)
  assertions = assertions + 1
  if not value then
    error(message or "assertion failed", 2)
  end
end

local function highlight(name, links)
  return vim.api.nvim_get_hl(0, { name = name, link = links == true })
end

local function assert_link(name, target)
  local hl = highlight(name, true)
  assert_true(hl.link == target, string.format("%s should link to %s, got %s", name, target, vim.inspect(hl)))
end

local function assert_float_surface(background, blend, message)
  for _, name in ipairs({ "NormalFloat", "FloatBorder", "FloatTitle" }) do
    local hl = highlight(name)
    assert_true(hl.bg == background, message .. " (" .. name .. " background): " .. vim.inspect(hl))
    assert_true((hl.blend or 0) == blend, message .. " (" .. name .. " blend): " .. vim.inspect(hl))
  end
end

local function theme_state(theme)
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

local function assert_theme_state(theme, expected, message)
  local actual = theme_state(theme)
  assert_true(vim.deep_equal(actual, expected), message .. ": " .. vim.inspect(actual))
end

local ok, failure = xpcall(function()
  local theme = require("nano-theme")
  local variants = require("nano-theme.variants").names

  assert_true(theme.options.transparent_floats == true, "transparent_floats default is not true")
  assert_true(theme.options.float_blend == 0, "float_blend default is not zero")

  for _, mode in ipairs({ "light", "dark" }) do
    vim.o.background = mode
    for _, variant in ipairs(variants) do
      theme.setup({ [mode .. "_variant"] = variant, transparent = false })
      theme.load()
      local normal = highlight("Normal")
      assert_true(vim.g.colors_name == "nano-theme", "colors_name was not set")
      assert_true(vim.o.background == mode, "load changed the background mode")
      assert_true(normal.fg ~= nil and normal.bg ~= nil, mode .. "/" .. variant .. " did not load Normal")
    end
  end

  local previous = theme.options.light_variant
  local valid, message = pcall(theme.setup, { light_variant = "not-a-variant" })
  assert_true(not valid and message:match("invalid light_variant"), "invalid variant error was not useful")
  assert_true(theme.options.light_variant == previous, "invalid setup changed existing options")
  valid, message = pcall(theme.setup, { dark_variant = "not-a-variant" })
  assert_true(not valid and message:match("invalid dark_variant"), "invalid dark variant error was not useful")

  theme.setup({ transparent_floats = false, float_blend = 100 })
  assert_true(not theme.options.transparent_floats, "valid transparent_floats was not accepted")
  assert_true(theme.options.float_blend == 100, "valid float_blend was not accepted")
  local valid_float_options = vim.deepcopy(theme.options)
  for _, invalid in ipairs({
    { transparent_floats = 1, error = "transparent_floats" },
    { float_blend = -1, error = "float_blend" },
    { float_blend = 101, error = "float_blend" },
    { float_blend = 1.5, error = "float_blend" },
    { float_blend = "20", error = "float_blend" },
  }) do
    local expected = invalid.error
    invalid.error = nil
    valid, message = pcall(theme.setup, invalid)
    assert_true(not valid and message:match(expected), "invalid " .. expected .. " was accepted")
    assert_true(vim.deep_equal(theme.options, valid_float_options), "failed setup mutated existing options")
  end
  theme.setup({ transparent_floats = true, float_blend = 0 })

  theme.setup({ test_nested = { first = true } })
  theme.setup({ test_nested = { second = true } })
  assert_true(
    theme.options.test_nested.first and theme.options.test_nested.second,
    "setup no longer deep-merges valid options"
  )

  theme.setup({
    light_variant = "default",
    dark_variant = "default",
    transparent = false,
    transparent_floats = true,
    float_blend = 0,
  })
  vim.o.background = "light"
  theme.load()
  assert_link("@text.diff.add", "DiffAdd")
  assert_link("@text.diff.delete", "DiffDelete")
  assert_link("@text.underline", "Underlined")
  assert_true(highlight("@parameter").fg == highlight("Normal").fg, "@parameter has the wrong foreground")
  assert_true(highlight("Underlined").underline == true, "Underlined is not underlined")

  local commands = vim.api.nvim_get_commands({ builtin = false })
  assert_true(commands.NanoThemeTransparent ~= nil, "toggle command is missing")
  assert_true(commands.NanoThemeTransparentEnable ~= nil, "enable command is missing")
  assert_true(commands.NanoThemeTransparentDisable ~= nil, "disable command is missing")
  assert_true(commands.NanoThemeLight ~= nil, "light selector command is missing")
  assert_true(commands.NanoThemeDark ~= nil, "dark selector command is missing")

  assert_true(highlight("NormalFloat", true).link == nil, "NormalFloat still links to Normal")
  assert_float_surface(highlight("Normal").bg, 0, "native float surface is inconsistent")
  theme.setup({ transparent_floats = true, float_blend = 73 })
  vim.cmd.NanoThemeTransparentEnable()
  assert_true(theme.options.transparent, "enable command did not update state")
  assert_true(highlight("Normal").bg == nil, "Normal is not transparent")
  assert_true(highlight("StatusLine").bg == nil, "StatusLine is not transparent")
  assert_true(type(highlight("MiniStatuslineModeNormal").bg) == "number", "mode badge background is not colored")
  assert_true(highlight("NeoTreeNormal").bg == nil, "integration container is not transparent")
  assert_true(highlight("Visual").bg ~= nil, "Visual contrast background was cleared")
  assert_true(highlight("DiffAdd").bg ~= nil, "diff contrast background was cleared")
  assert_float_surface(nil, 0, "fully transparent floats were faded")
  assert_link("TelescopeBorder", "FloatBorder")
  assert_true(highlight("TelescopeBorder").bg == nil, "linked float border is not transparent")
  theme.load()
  assert_true(highlight("Normal").bg == nil, "transparency did not survive reload")
  assert_float_surface(nil, 0, "float transparency did not survive reload")

  theme.setup({ transparent_floats = false, float_blend = 37 })
  theme.load()
  local float_background = highlight("NormalFloat").bg
  assert_true(highlight("Normal").bg == nil, "general transparency was lost")
  assert_true(float_background ~= nil, "native float background was not retained")
  assert_float_surface(float_background, 37, "retained float surface is inconsistent")
  assert_true(highlight("TelescopeBorder").bg == float_background, "linked float border lost its background")
  assert_true(highlight("TelescopeBorder").blend == 37, "linked float border did not inherit blend")
  assert_true(highlight("NoiceCmdlinePopupTitle").bg == float_background, "linked float title lost its background")
  theme.load()
  assert_float_surface(float_background, 37, "retained float settings did not survive reload")

  vim.cmd.NanoThemeTransparentDisable()
  assert_true(not theme.options.transparent, "disable command did not update state")
  assert_true(highlight("Normal").bg ~= nil, "Normal background was not restored")
  assert_float_surface(float_background, 37, "disabling transparency changed float settings")
  vim.cmd.NanoThemeTransparent()
  assert_true(theme.options.transparent, "toggle command did not enable transparency")
  assert_float_surface(float_background, 37, "toggle did not retain native float settings")
  vim.cmd.NanoThemeTransparent()
  assert_true(not theme.options.transparent, "toggle command did not disable transparency")

  theme.setup({ transparent_floats = true, float_blend = 100 })
  theme.load()
  assert_float_surface(highlight("NormalFloat").bg, 100, "maximum float blend was not applied")
  theme.setup({ transparent_floats = true, float_blend = 0 })
  theme.load()
  assert_float_surface(highlight("NormalFloat").bg, 0, "opaque float blend was not restored")

  vim.g.colors_name = "external-test"
  vim.api.nvim_set_hl(0, "Normal", { fg = "#ffffff", bg = "#123456" })
  theme.set_transparent(true)
  assert_true(vim.g.colors_name == "external-test", "transparency changed an external colorscheme")
  assert_true(highlight("Normal").bg == tonumber("123456", 16), "external Normal was changed")
  theme.set_transparent(false)

  local notifications = 0
  local group = vim.api.nvim_create_augroup("NanoThemeLaneTests", { clear = true })
  vim.api.nvim_create_autocmd("ColorScheme", {
    group = group,
    pattern = "nano-theme",
    callback = function()
      notifications = notifications + 1
      assert_true(notifications < 3, "ColorScheme notification recursed")
    end,
  })

  theme.load()
  assert_true(notifications == 0, "load unexpectedly emitted ColorScheme")
  vim.cmd.colorscheme("nano-theme")
  assert_true(notifications == 1, ":colorscheme emitted duplicate notifications")
  notifications = 0
  theme.apply({ notify = true })
  assert_true(notifications == 1, "manual apply did not emit exactly one notification")

  local external_notifications = 0
  vim.api.nvim_create_autocmd("ColorScheme", {
    group = group,
    pattern = "habamax",
    callback = function()
      external_notifications = external_notifications + 1
    end,
  })

  -- Capture vim.ui.select calls instead of opening an interactive selector.
  local original_select = vim.ui.select
  local selection
  vim.ui.select = function(items, opts, callback)
    selection = { items = items, opts = opts, callback = callback }
  end

  -- Commands use the canonical registry and offer Neovim's selector metadata.
  theme.setup({ light_variant = "default", dark_variant = "ink", transparent = false })
  vim.o.background = "dark"
  theme.load()
  notifications = 0
  vim.cmd.NanoThemeLight()
  assert_true(vim.deep_equal(selection.items, variants), "light selector does not use canonical variants")
  assert_true(selection.opts.prompt == "Select light variant:", "light selector prompt is wrong")
  assert_true(selection.opts.kind == "nano-theme", "light selector kind is wrong")
  assert_true(type(selection.opts.preview_item) == "function", "light selector has no preview callback")
  assert_true(type(selection.callback) == "function", "light selector has no choice callback")

  -- The documented preview_item(item, index) callback changes only the temporary theme.
  selection.opts.preview_item("gilded", 4)
  assert_true(theme.options.light_variant == "gilded", "preview did not update the light variant")
  assert_true(vim.o.background == "light", "preview did not change to the requested background")
  assert_true(vim.g.colors_name == "nano-theme", "preview did not apply nano-theme")
  assert_true(notifications == 0, "preview emitted a ColorScheme notification")

  selection.callback("gray", 5)
  assert_true(theme.options.light_variant == "gray", "acceptance did not commit the selected variant")
  assert_true(vim.o.background == "light", "acceptance did not keep the requested background")
  assert_true(notifications == 1, "acceptance after preview did not emit exactly one notification")

  -- A selector may ignore preview_item; acceptance must still apply its choice.
  theme.setup({ light_variant = "amber", dark_variant = "default", transparent = false })
  vim.o.background = "light"
  theme.load()
  notifications = 0
  theme.select_dark_variant()
  selection.callback("ink", 7)
  assert_true(theme.options.dark_variant == "ink", "acceptance without preview did not commit")
  assert_true(vim.o.background == "dark", "acceptance without preview did not set dark background")
  assert_true(vim.g.colors_name == "nano-theme", "acceptance without preview did not apply nano-theme")
  assert_true(notifications == 1, "acceptance without preview did not emit exactly one notification")

  -- Repeated previews remain temporary, and cancellation restores a nano-theme snapshot.
  theme.setup({
    light_variant = "amber",
    dark_variant = "ink",
    transparent = true,
    transparent_floats = false,
    float_blend = 64,
  })
  vim.o.background = "dark"
  theme.load()
  local nano_snapshot = theme_state(theme)
  notifications = 0
  theme.select_light_variant()
  theme.options.transparent_floats = true
  theme.options.float_blend = 7
  selection.opts.preview_item("blue", 2)
  selection.opts.preview_item("gilded", 4)
  selection.callback(nil, nil)
  assert_theme_state(theme, nano_snapshot, "nil after preview did not restore nano-theme state")
  assert_true(notifications == 0, "nano-theme cancellation emitted ColorScheme")

  -- Cancelling a preview restores an external colorscheme and its background exactly.
  theme.setup({ light_variant = "green", dark_variant = "rougier", transparent = true })
  vim.cmd.colorscheme("habamax")
  local external_snapshot = theme_state(theme)
  notifications = 0
  external_notifications = 0
  vim.cmd.NanoThemeDark()
  selection.opts.preview_item("orange", 10)
  selection.callback(nil, nil)
  assert_theme_state(theme, external_snapshot, "nil after preview did not restore external state")
  assert_true(notifications == 0, "external cancellation notified nano-theme")
  assert_true(external_notifications == 1, "external cancellation did not emit one external notification")

  -- Without a preview callback, cancellation is a no-op.
  theme.setup({ light_variant = "orange", dark_variant = "gray", transparent = false })
  vim.o.background = "dark"
  theme.load()
  local unchanged_snapshot = theme_state(theme)
  notifications = 0
  theme.select_light_variant()
  selection.callback(nil, nil)
  assert_theme_state(theme, unchanged_snapshot, "nil without preview changed state")
  assert_true(notifications == 0, "nil without preview emitted ColorScheme")

  vim.ui.select = original_select
end, debug.traceback)

if not ok then
  io.stderr:write(failure .. "\n")
  vim.cmd.cquit(1)
end

print(string.format("nano-theme tests passed (%d assertions)", assertions))
vim.cmd.quit()
