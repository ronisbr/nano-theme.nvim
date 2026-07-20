# Neovim N Λ N O Theme

<p align="center"><img src="screenshots/nano-theme-nvim.png" alt="nano-theme.nvim"></p>

This package adapts @rougier's excellent
[N Λ N O Theme](https://github.com/rougier/nano-theme) for Emacs to Neovim.

N Λ N O Theme is a minimalist color scheme based on six colors only:

- **Critical face** is for information that requires immediate action.

> It should be of high contrast when compared to other faces. It must be used scarcely.

- **Popout face** is used for information that needs attention.

> To achieve such effect, the hue of the face has to be sufficiently different from other
> faces such that it attracts attention through the popout effect.

- **Strong face** is used for information of a structural nature.

> It has to be the same color as the default color and only the weight differs by one level
> (e.g., light/regular or regular/bold). It is generally used for titles, keywords,
> directory, etc.

- **Salient face** is used for information that is important.

> To suggest the information is of the same nature but important, the face uses a different
> hue with approximately the same intensity as the default face. This is typically used for
> links.

- **Faded face** is for information that is less important.

> It is made by using a hue similar to the default face but with a lesser intensity than the
> default. It can be used for comments, secondary information and also replace italic (which
> is generally abused anyway).

- **Subtle face** is used to suggest a physical area on the screen.

> It is important to not disturb too strongly the reading of information and this can be
> made by setting a very light background color that is barely perceptible.

This Neovim version is slightly modified compared to the Emacs version. Its light background
is warmer, its dark background omits the blue tint, and its colors are tuned to meet minimum
accessibility contrast requirements.

## Installation

The suggested installation method is using `vim.pack.add` in Neovim v0.12+:

```lua
vim.pack.add({ "ronisbr/nano-theme.nvim" })
vim.o.background = "light" -- or "dark".
vim.cmd.colorscheme("nano-theme")
```

## Configuration

You can configure the theme variant independently for light and dark backgrounds by calling
the `setup` function:

```lua
MiniDeps.add({ source = "ronisbr/nano-theme.nvim" })
vim.o.background = "light" -- or "dark".
require("nano-theme").setup({
  light_variant       = "default",
  dark_variant        = "default",
  transparent         = false,
  transparent_floats  = true,
  float_blend         = 0,
})
vim.cmd.colorscheme("nano-theme")
```

These are the defaults; `transparent_floats = true` and `float_blend = 0`
preserve the previous float appearance. `setup` validates both new values.

### Variants

| Variant | Description |
|:--|:--|
| `amber` | Amber phosphor CRT monitor palette. Dark mode uses a near-black background with warm golden-amber glowing text; light mode uses a warm parchment background with deep amber ink. |
| `blue` | Cool, steel-blue tinted palette where backgrounds and accents lean toward blue tones. |
| `default` | Warm, slightly tinted palette faithful to the original N Λ N O Emacs theme. |
| `gilded` | Ink, paper, and gold palette — a sibling of `ink` with a softer, warmer character. Dark mode uses a blue-tinted ink background with warm paper text, a gilded gold salient, and a muted teal popout; light mode uses a warm paper background with dark ink text. Choose `ink` for maximum neutral contrast, `gilded` for the tinted, paper-like rendition of the same gold/cool-accent scheme. |
| `gray` | Fully desaturated, neutral gray palette. Salient and popout faces use achromatic tones for a monochrome feel. |
| `green` | Nature-inspired palette with green-tinted backgrounds. |
| `ink` | High-contrast variant with near-pure black/white neutral backgrounds and warm amber/blue accent hues. The crisper, fully neutral sibling of `gilded`. |
| `jinx` | Arcane-inspired palette. Both modes share the same role mapping: magenta-pink salient (Jinx's hair), Hextech neon-blue strong, and electric teal-cyan popout. Light mode uses a near-white background with a barely perceptible grey-pink tint; dark mode uses a near-black background with a subtle violet tint. |
| `old_terminal` | Retro phosphor monitor palette. Dark mode uses near-black background with bright green text; light mode uses a green-tinted background with dark green text. |
| `orange` | Warm, earthy palette with orange-tinted backgrounds and amber accents. |
| `rougier` | Palette closest to the original N Λ N O Emacs theme by @rougier, with minimal modifications. |

### Changing the Variant at Runtime

Use `:NanoThemeLight` or `:NanoThemeDark` to select a variant for that background. The theme
uses Neovim's overrideable `vim.ui.select`, so it honors any selector UI you configure. When
that selector supports and calls `preview_item`, the highlighted variant is previewed. Selecting
an item, including with Enter where supported, applies it; cancelling restores the previous
colorscheme, background, variants, and transparency setting.

The same selector is available from Lua:

```lua
-- Open an interactive selector to change the light theme variant.
require("nano-theme").select_light_variant()

-- Open an interactive selector to change the dark theme variant.
require("nano-theme").select_dark_variant()
```

The selector lists the canonical variants and keeps the light and dark selections independent.

### Transparent Backgrounds

Set `transparent = true` in `setup` to clear background-bearing editor and integration
surfaces while retaining contrast for selections, searches, diagnostics, and diffs. The
setting applies only when nano-theme is loaded and persists across nano-theme reloads.

When general transparency is enabled, `transparent_floats = true` makes
`NormalFloat`, `FloatBorder`, and `FloatTitle` fully transparent. Set it to `false` to
retain Nano's native float background. For a recommended dark tinted float setup, use:

```lua
require("nano-theme").setup({
  transparent = true,
  transparent_floats = false,
  float_blend = 10,
})
```

`float_blend` is an integer from 0 through 100 applied to Nano float highlight groups
when their background is retained: 0 is opaque and 100 is maximally blended. It does
not mutate Neovim's `winblend` option. Plugins with custom, non-linked float highlights
may not inherit it.

Use `:NanoThemeTransparent` to toggle it, or `:NanoThemeTransparentEnable` and
`:NanoThemeTransparentDisable` to set it explicitly. The equivalent Lua APIs are:

```lua
require("nano-theme").toggle_transparent()
require("nano-theme").set_transparent(true)  -- enable
require("nano-theme").set_transparent(false) -- disable
```

When nano-theme is active, these commands and functions reapply it immediately. Otherwise,
they update the state without changing the active colorscheme.

## Tests

Run the dependency-free headless test suite from the repository root:

```sh
make test
```

## Screenshots

![Light Theme](./screenshots/screenshot_light_01.png)

![Dark Theme](./screenshots/screenshot_dark_01.png)
