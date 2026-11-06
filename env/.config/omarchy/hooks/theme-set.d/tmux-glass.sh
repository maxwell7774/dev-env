#!/bin/bash

# Glassy mode already gives the terminal a translucent theme background
# (omarchy-theme-set-glass writes background-opacity into the terminal's theme
# file). omarchy-theme-set-tmux then paints the same background into every tmux
# pane cell, and Ghostty's background-opacity-cells blends those cell
# backgrounds on top of the window background, so panes land around 0.88 opaque
# instead of 0.65. Strip the pane background while glassy is on, so panes match
# the status line (which is drawn with bg=default) and the rest of the glass.

toggles="${XDG_STATE_HOME:-$HOME/.local/state}/omarchy/toggles/hypr"

[[ -f $toggles/window-glassy.lua ]] || exit 0
tmux list-sessions >/dev/null 2>&1 || exit 0

tmux set-option -g window-style "fg=default,bg=default"
tmux set-option -g window-active-style "fg=default,bg=default"

# The theme palette pushed into each pane also sets its default background, and
# tmux substitutes that for blank cells. Reset it to the terminal default; apps
# that query the background still get the attached client's real one.
while IFS= read -r pane_tty; do
	[[ $pane_tty == /dev/pts/* ]] || continue
	printf '\033]111\007' >"$pane_tty" 2>/dev/null || true
done < <(tmux list-panes -a -F '#{pane_tty}' | sort -u)

tmux refresh-client -S 2>/dev/null || true
