local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#121212",
	fg = "#e5e5e5",
	black = "#121212",
	g_7 = "#535353",
	red = "#C53030",
	green = "#629C7D",
	yellow = "#E5A72A",
	blue = "#4A8B8B",
	magenta = "#C9347C",
	cyan = "#6E91C4",
	orange = "#D87C4A",
}

M.add_plugins("ficd0/ashen.nvim")

return {
	colorscheme = "ashen",
	lualine_theme = M.make_lualine_theme({
		bg = colors.bg,
		fg = colors.fg,
		b_bg = colors.g_7,
		normal_accent = colors.blue,
		insert_accent = colors.green,
		visual_accent = colors.magenta,
		replace_accent = colors.red,
		command_accent = colors.orange,
	}),
}
