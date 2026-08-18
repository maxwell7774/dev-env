local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#121212",
	fg = "#bebebe",
	red = "#D35F5F",
	yellow = "#FFC107",
	darkred = "#b91c1c",
	orange = "#e68e0d",
	brightbg = "#8a8a8d",
}

M.add_plugins("tahayvr/matteblack.nvim")

return {
	colorscheme = "matteblack",
	lualine_theme = M.make_lualine_theme({
		bg = colors.bg,
		fg = colors.fg,
		b_bg = colors.brightbg,
		normal_accent = colors.yellow,
		insert_accent = colors.red,
		visual_accent = colors.orange,
		replace_accent = colors.darkred,
		command_accent = colors.yellow,
	}),
}
