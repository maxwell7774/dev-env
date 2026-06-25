local themes = {
	catppuccin_latte = require("stitch.plugins.themes.catppuccin-latte"),
	catppuccin = require("stitch.plugins.themes.catppuccin"),
	ethereal = require("stitch.plugins.themes.ethereal"),
	everforest = require("stitch.plugins.themes.everforest"),
	flexoki_light = require("stitch.plugins.themes.flexoki-light"),
	gruvbox = require("stitch.plugins.themes.gruvbox"),
	hackerman = require("stitch.plugins.themes.hackerman"),
	kanagawa = require("stitch.plugins.themes.kanagawa"),
	lumon = require("stitch.plugins.themes.lumon"),
	matte_black = require("stitch.plugins.themes.matte-black"),
	miasma = require("stitch.plugins.themes.miasma"),
	nes = require("stitch.plugins.themes.nes"),
	nord = require("stitch.plugins.themes.nord"),
	osaka_jade = require("stitch.plugins.themes.osaka-jade"),
	retro_82 = require("stitch.plugins.themes.retro-82"),
	ristretto = require("stitch.plugins.themes.ristretto"),
	rose_pine = require("stitch.plugins.themes.rose-pine"),
	tokyo_night = require("stitch.plugins.themes.tokyo-night"),
	vantablack = require("stitch.plugins.themes.vantablack"),
	white = require("stitch.plugins.themes.white"),
}

local theme_module = {}

function theme_module.use(name)
	local theme = themes[name]
	if not theme then
		vim.notify("Unknown theme: " .. name, vim.log.levels.ERROR)
		return
	end

	if theme.background then
		vim.o.background = "dark"
	end

	if theme.apply then
		theme.apply()
	else
		vim.cmd.colorscheme(theme.colorscheme)
	end

	require("lualine").setup({
		options = {
			theme = theme.lualine_theme,
			globalstatus = true,
			component_separators = "",
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = { { "mode", right_padding = 2 } },
			lualine_b = { "filename", "branch" },
			lualine_c = {
				"%=",
			},
			lualine_x = {},
			lualine_y = { "filetype", "progress" },
			lualine_z = {
				{ "location", left_padding = 2 },
			},
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
end

function theme_module.detect()
	package.loaded["stitch.plugins.themes.set-theme"] = nil
	local ok, machine_theme = pcall(require, "stitch.plugins.themes.set-theme")
	if ok and type(machine_theme) == "string" and themes[machine_theme] then
		return machine_theme
	end

	local theme_file = vim.fn.expand("~/.config/omarchy/current/theme.name")
	local ok, lines = pcall(vim.fn.readfile, theme_file)
	if ok and #lines > 0 then
		local name = lines[1]:gsub("%s+", "")
		if themes[name] then
			return name
		end
	end

	return "gruvbox"
end

theme_module.use(theme_module.detect())

return theme_module
