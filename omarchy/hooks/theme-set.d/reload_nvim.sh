#!/bin/bash

# This hook is called with the snake-cased name of the theme that has just been set.
# It writes the theme-set.lua file so nvim can discover the current theme.

NVIM_THEME_DIR="$HOME/.config/nvim/lua/stitch/plugins/themes"
THEME_SET_FILE="$NVIM_THEME_DIR/set-theme.lua"

mkdir -p "$NVIM_THEME_DIR"
echo "return \"$1\"" > "$THEME_SET_FILE"

kill -s SIGUSR1 $(pidof nvim 2>/dev/null) 2>/dev/null
