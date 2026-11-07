#!/bin/bash

# The tmux status bar is painted from hex colours in colors.toml (dark strip,
# accent caps, muted inactive text), which tmux.conf can only approximate with
# ANSI names. Repaint it so a theme switch carries the bar along with the rest
# of the terminal. Runs after omarchy-theme-set-tmux has pushed the palette.
"$HOME/.local/scripts/tmux-bar" 2>/dev/null || true
