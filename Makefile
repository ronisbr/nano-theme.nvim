.PHONY: test

test:
	nvim --headless -u NONE -c "lua dofile('tests/run.lua')"
