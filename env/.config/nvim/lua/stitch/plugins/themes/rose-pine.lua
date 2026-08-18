local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#faf4ed",
	fg = "#575279",
	black = "#f2e9e1",
	red = "#b4637a",
	green = "#286983",
	yellow = "#ea9d34",
	blue = "#56949f",
	magenta = "#907aa9",
	cyan = "#d7827e",
	selection_bg = "#dfdad9",
}

M.add_plugins("rose-pine/neovim")

return {
	colorscheme = "rose-pine-dawn",
	lualine_theme = M.make_lualine_theme({
		bg = colors.bg,
		fg = colors.fg,
		b_bg = colors.black,
		normal_accent = colors.red,
		insert_accent = colors.green,
		visual_accent = colors.magenta,
		replace_accent = colors.yellow,
		command_accent = colors.blue,
	}),
}
