#!/bin/bash

# This hook is called with the kebab-cased theme name (e.g. "matte-black").
# It copies the theme's neovim.lua into the nvim config as set-theme.lua
# so the name in neovim.lua is what nvim uses.

NVIM_THEME_DIR="$HOME/.config/nvim/lua/stitch/plugins/themes"
THEME_SET_FILE="$NVIM_THEME_DIR/set-theme.lua"

for dir in "$HOME/.config/omarchy/themes/$1" "$HOME/.local/share/omarchy/themes/$1"; do
	if [ -f "$dir/neovim.lua" ]; then
		mkdir -p "$NVIM_THEME_DIR"
		cp "$dir/neovim.lua" "$THEME_SET_FILE"
		break
	fi
done

kill -s SIGUSR1 $(pidof nvim 2>/dev/null) 2>/dev/null
