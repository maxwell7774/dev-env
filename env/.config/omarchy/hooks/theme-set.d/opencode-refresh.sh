#!/bin/bash

# OpenCode's "system" theme is derived from a terminal palette probe and only
# probes again when it sees a terminal theme notification or SIGUSR2. tmux
# only forwards a theme notification when dark changes to light or back, so a
# dark-to-dark switch leaves OpenCode with the old palette: the transparent
# canvas follows tmux's window-style background while every painted surface
# keeps the previous theme. Refresh the TUI once omarchy-theme-set-tmux has
# pushed the new palette into the panes.
#
# Only the TUI registers a SIGUSR2 handler, and it is the foreground process of
# its pane. Never signal the `opencode serve` service by name: it has no
# handler, so SIGUSR2 would terminate it.

tmux list-sessions >/dev/null 2>&1 || exit 0

while IFS= read -r pane_tty; do
	[[ $pane_tty == /dev/pts/* ]] || continue
	tpgid=$(ps -o tpgid= -t "${pane_tty#/dev/}" 2>/dev/null | awk 'NF && $1 > 0 { print $1; exit }')
	[[ -n $tpgid ]] || continue
	case $(ps -o comm= -p "$tpgid" 2>/dev/null) in
		opencode|opencode.exe) kill -USR2 "$tpgid" 2>/dev/null || true ;;
	esac
done < <(tmux list-panes -a -F '#{pane_tty}' 2>/dev/null | sort -u)
