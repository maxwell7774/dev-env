local M = {}

-- Omarchy state dir. Omarchy hardcodes $HOME/.local/state (matches XDG_STATE_HOME here).
local STATE_DIR = (vim.env.HOME and (vim.env.HOME .. "/.local/state") or vim.fn.stdpath("state"))
	.. "/omarchy"
local THEME_NAME_FILE = STATE_DIR .. "/current/theme.name"
local COLORS_TOML = STATE_DIR .. "/current/theme/colors.toml"
local TOGGLES_DIR = STATE_DIR .. "/toggles/hypr"

local is_omarchy = function()
	return vim.uv.fs_stat(STATE_DIR) ~= nil
end

-- ---------------------------------------------------------------------------
-- Plugins
-- ---------------------------------------------------------------------------
vim.pack.add({
	{ src = "https://github.com/omacom/aether.nvim", version = "v3" },
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
})

-- Neutralize aether's built-in hotreload (it reads Omarchy's rendered neovim.lua,
-- a LazyVim spec; we drive colors from colors.toml ourselves). Must happen before
-- aether.setup()/load(), and package.loaded persists for the session.
package.loaded["aether.hotreload"] = { setup = function() end }

-- ---------------------------------------------------------------------------
-- Palette
-- ---------------------------------------------------------------------------
-- Parse a flat colors.toml. Captures any `key = "value"` line (hex colors and
-- the `mode = "dark"|"light"` string); skips anything unquoted. Returns nil if
-- the file is missing/unreadable.
local function parse_colors_toml(path)
	local f = io.open(path, "r")
	if not f then
		return nil
	end
	local raw = {}
	for line in f:lines() do
		local key, val = line:match("^%s*([%w_]+)%s*=%s*\"([^\"]*)\"")
		if key and val ~= "" then
			raw[key] = val
		end
	end
	f:close()
	return raw
end

-- Map a colors.toml-shaped table into aether's colors table. Returns
-- { colors = <aether colors>, mode = "dark"|"light" }. nil values are dropped
-- (assigning nil removes the key) so aether fills gaps with its defaults.
local function map_to_aether(raw)
	return {
		mode = raw.mode or "dark",
		colors = {
			bg = raw.background,
			dark_bg = raw.dark_background,
			darker_bg = raw.darker_background,
			lighter_bg = raw.lighter_background,

			fg = raw.foreground,
			dark_fg = raw.dark_foreground,
			light_fg = raw.light_foreground,
			bright_fg = raw.bright_foreground,
			muted = raw.muted,

			red = raw.red,
			yellow = raw.yellow,
			orange = raw.orange,
			green = raw.green,
			cyan = raw.cyan,
			blue = raw.blue,
			magenta = raw.magenta, -- aether aliases magenta -> purple
			brown = raw.brown,

			bright_red = raw.bright_red,
			bright_yellow = raw.bright_yellow,
			bright_green = raw.bright_green,
			bright_cyan = raw.bright_cyan,
			bright_blue = raw.bright_blue,
			bright_magenta = raw.bright_magenta, -- alias for bright_purple

			accent = raw.accent,
			cursor = raw.bright_foreground,
			foreground = raw.foreground,
			background = raw.background,
			selection = raw.selection,
			selection_foreground = raw.selection_foreground,
			selection_background = raw.selection_background,
		},
	}
end

-- Resolve the palette for the current environment.
local function resolve_palette()
	local raw = is_omarchy() and parse_colors_toml(COLORS_TOML) or nil
	if not raw or not raw.background then
		raw = require("stitch.plugins.themes.fallback")
	end
	return map_to_aether(raw)
end

-- ---------------------------------------------------------------------------
-- Transparency mode
-- ---------------------------------------------------------------------------
-- opaque -> solid background; translucent and glassy both -> transparent
-- (Neovim can't blur; the terminal/compositor supplies alpha+blur, so the two
-- non-opaque modes are identical from Neovim's perspective).
local function transparency_mode()
	if not is_omarchy() then
		return "opaque"
	end
	if vim.uv.fs_stat(TOGGLES_DIR .. "/window-opaque.lua") then
		return "opaque"
	end
	if vim.uv.fs_stat(TOGGLES_DIR .. "/window-glassy.lua") then
		return "glassy"
	end
	return "translucent"
end

-- ---------------------------------------------------------------------------
-- Apply
-- ---------------------------------------------------------------------------
local function apply()
	local spec = resolve_palette()
	local transparent = transparency_mode() ~= "opaque"

	require("aether").setup({
		colors = spec.colors,
		transparent = transparent,
		styles = {
			sidebars = transparent and "transparent" or "dark",
			floats = transparent and "transparent" or "dark",
		},
	})

	vim.o.background = spec.mode
	vim.cmd.colorscheme("aether") -- re-applies + fires ColorScheme so lualine/etc. refresh
end

M.apply = apply

-- ---------------------------------------------------------------------------
-- Lualine
-- ---------------------------------------------------------------------------
require("lualine").setup({
	options = {
		theme = "aether",
		globalstatus = true,
		component_separators = "",
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { { "mode", right_padding = 2 } },
		lualine_b = { "filename", "branch" },
		lualine_c = { "%=" },
		lualine_x = {},
		lualine_y = { "filetype", "progress" },
		lualine_z = { { "location", left_padding = 2 } },
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "location" },
	},
	tabline = {},
	extensions = {},
})

-- ---------------------------------------------------------------------------
-- Watchers (live reload)
-- ---------------------------------------------------------------------------
local handles = {} -- keep fs_event handles alive (prevent GC)
local timers = {} -- cancellable debounce timers

local function debounce(key, ms, fn)
	if timers[key] then
		timers[key]:stop()
		timers[key]:close()
		timers[key] = nil
	end
	local t = vim.uv.new_timer()
	t:start(ms, 0, function()
		t:close()
		timers[key] = nil
		vim.schedule(fn)
	end)
	timers[key] = t
end

local function watch_file(path, key, ms)
	if vim.uv.fs_stat(path) == nil then
		return
	end
	local h = vim.uv.new_fs_event()
	h:start(path, {}, vim.schedule_wrap(function()
		debounce(key, ms, apply)
	end))
	handles[key] = h
end

local function watch_dir(path, key, ms)
	if vim.uv.fs_stat(path) == nil then
		return
	end
	local h = vim.uv.new_fs_event()
	h:start(path, {}, vim.schedule_wrap(function()
		debounce(key, ms, apply)
	end))
	handles[key] = h
end

local function setup_watchers()
	if not vim.uv then
		return
	end
	-- Theme switch: theme.name is rewritten in place (stable inode), so a file
	-- watcher suffices; the new colors.toml is already swapped in by the time
	-- theme.name changes.
	watch_file(THEME_NAME_FILE, "theme", 500)
	-- Transparency mode: watch the toggles dir (create/delete of toggle files).
	watch_dir(TOGGLES_DIR, "transparency", 300)
end

-- ---------------------------------------------------------------------------
-- Init
-- ---------------------------------------------------------------------------
apply()
setup_watchers()

return M
