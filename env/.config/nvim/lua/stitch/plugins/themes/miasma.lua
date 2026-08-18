local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#222222",
	fg = "#c2c2b0",
	red = "#685742",
	green = "#5f875f",
	yellow = "#b36d43",
	blue = "#78824b",
	magenta = "#bb7744",
	cyan = "#c9a554",
	brightblack = "#666666",
}

M.add_plugins("xero/miasma.nvim")

return {
	colorscheme = "miasma",
	lualine_theme = M.make_lualine_theme({
		bg = colors.bg,
		fg = colors.fg,
		b_bg = colors.brightblack,
		normal_accent = colors.blue,
		insert_accent = colors.green,
		visual_accent = colors.magenta,
		replace_accent = colors.red,
		command_accent = colors.yellow,
	}),
}
