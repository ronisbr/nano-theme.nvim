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

.PHONY: help helptags test

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

##@ Testing

## Run the headless Neovim test suite
test:
	nvim --headless -u NONE -c "lua dofile('tests/run.lua')"

# == Internal ==============================================================================

# No internal targets.
