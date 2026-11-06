# AGENTS.md

Personal Omarchy Linux dotfiles. No build/test/lint. Source of truth is `env/` mirroring `$HOME`.

## Layout
- `env/.config/` -> `$XDG_CONFIG_HOME` (`nvim/`, `hypr/`, `ghostty/`, `omarchy/`, `tmux/`)
- `env/.local/scripts/` -> `~/.local/scripts` (`dev-env`, `dev-commit`, `tmux-sessionizer`)
- `env/.bashrc`, `env/.bash_profile`, `env/.tmux-sessionizer` -> `$HOME`
- `dev-env` - deploy script; `run` - runs executable files in `runs/` (currently only `runs/neovim`); `runs/` - one-shot installer scripts

## Deploy
- Must run from repo root (`dev-env` uses relative `./env/...` paths):
  - `./dev-env --dry` first, then `./dev-env`
  - `./run --dry [filter]`, `./run [filter]` (substring match on `runs/*` filename)
- `dev-env` is destructive: `rm -rf` + `cp -r` per top-level dir, no symlinks. Edit in repo, then redeploy; never edit `~/.config` directly and expect it to persist.
- `~/.local/scripts/dev-env` just does `cd ~/dev && ./dev-env`.
- `hyprctl reload` runs at end of `dev-env`.

## Gotchas
- `runs/neovim`: clones `neovim@v0.12.4` to `~/personal/neovim`, `pacman -S base-devel cmake ninja curl git`, builds from source. Expensive/Arch-only; don't run casually.
- `env/.config/hypr/hyprland.lua` loads Omarchy defaults via `$OMARCHY_PATH` bootstrap, sets `omarchy_default_bindings = false`, then loads local `hypr/monitors|input|bindings|looknfeel|autostart`. Put overrides there, not in defaults.
- `env/.config/hypr/monitors.lua` has machine-specific outputs (`eDP-1` 2880x1800, `DP-2` 2560x1440). Update per machine.
- Adding an Omarchy theme touches 3 places with matching names: `env/.config/omarchy/themes/<kebab>/neovim.lua` (returns `snake_case` key), `env/.config/nvim/lua/stitch/plugins/themes/<kebab>.lua`, `env/.config/ghostty/themes/<kebab>/ghostty.conf`, plus register in `env/.config/nvim/lua/stitch/plugins/themes/init.lua` `themes` table. `env/.config/omarchy/hooks/theme-set.d/reload_nvim.sh` copies `neovim.lua` -> `set-theme.lua` on theme switch.
- `env/.config/ghostty/config` loads colors dynamically from `~/.local/state/omarchy/current/theme/ghostty.conf`; don't hardcode theme colors there.
- `env/.bashrc` sources `~/.local/share/omarchy/default/bash/rc`; override aliases below it, don't edit Omarchy defaults.
- `tmux-sessionizer` is vendored in `env/.local/scripts/`; config is `env/.config/tmux-sessionizer/tmux-sessionizer.conf` (`TS_SEARCH_PATHS`, `TS_SESSION_COMMANDS`).
