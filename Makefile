## Description #############################################################################
#
# nano-theme.nvim
#
# Make targets for testing the Nano-inspired Neovim colorscheme.
#
## Options #################################################################################
#
# No configurable options.
#
############################################################################################

# == Configuration =========================================================================

.PHONY: help helptags logo panel test

.DEFAULT_GOAL := test

# == Help ==================================================================================

help:
	@awk 'BEGIN { printf "Usage: make \033[36m<target>\033[0m\n" } \
		/^$$/ { desc = "" } \
		/^##@/ { desc = ""; printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } \
		/^##[^@]/ { desc = (desc == "") ? substr($$0, 4) : desc "\034" substr($$0, 4) } \
		/^[a-zA-Z_-]+:/ { \
			if (desc != "") { \
				split($$0, a, /:/); \
				n = split(desc, d, "\034"); \
				printf "  \033[36m%-15s\033[0m %s\n", a[1], d[1]; \
				for (i = 2; i <= n; i++) printf "  %-20s %s\n", "", d[i] \
			}; \
			desc = "" }' \
		$(MAKEFILE_LIST)

# == Targets ===============================================================================

##@ Documentation

## Regenerate Neovim help tags
helptags:
	nvim --headless -u NONE -c "helptags doc" -c "qall!"

##@ Assets

## Regenerate the adaptive logo (screenshots/logo-light.svg and logo-dark.svg)
logo:
	nvim --headless -u NONE -c "lua dofile('scripts/logo.lua')"

## Regenerate the variant palette panel (screenshots/variants.svg and .png)
panel: logo
	nvim --headless -u NONE -c "lua dofile('scripts/panel.lua')"
	@if command -v rsvg-convert >/dev/null 2>&1; then \
		rsvg-convert --width 1440 --keep-aspect-ratio --output screenshots/variants.png screenshots/variants.svg; \
		echo "wrote screenshots/variants.png"; \
	elif command -v resvg >/dev/null 2>&1; then \
		resvg --width 1440 screenshots/variants.svg screenshots/variants.png; \
		echo "wrote screenshots/variants.png"; \
	else \
		echo "SVG written. Install librsvg (rsvg-convert) or resvg to render the PNG."; \
	fi
	@if [ -f screenshots/variants.png ] && command -v pngquant >/dev/null 2>&1; then \
		pngquant --quality 80-98 --speed 1 --force --ext .png screenshots/variants.png; \
		echo "optimized screenshots/variants.png"; \
	fi

##@ Testing

## Run the headless Neovim test suite
test:
	nvim --headless -u NONE -c "lua dofile('tests/run.lua')"

# == Internal ==============================================================================

# No internal targets.
