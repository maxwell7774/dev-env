local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#ffffff",
	fg = "#000000",
	black = "#ffffff",
	red = "#2a2a2a",
	green = "#3a3a3a",
	yellow = "#4a4a4a",
	blue = "#1a1a1a",
	magenta = "#2e2e2e",
	cyan = "#3e3e3e",
	white = "#000000",
	accent = "#6e6e6e",
}

M.add_plugins("bjarneo/white.nvim")

return {
	colorscheme = "white",
	lualine_theme = M.make_lualine_theme({
		bg = colors.bg,
		fg = colors.bg,
		b_bg = colors.accent,
		normal_accent = colors.blue,
		insert_accent = colors.white,
		visual_accent = colors.yellow,
		replace_accent = colors.red,
		command_accent = colors.cyan,
	}),
}
