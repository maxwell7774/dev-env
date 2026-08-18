local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#101010",
	fg = "#CECFC9",
	black = "#000000",
	red = "#D93F37",
	green = "#9A9D9A",
	yellow = "#9A9D9A",
	magenta = "#D93F37",
	brightred = "#DA0F0F",
}

M.add_plugins("bjarneo/nes.nvim")

return {
	colorscheme = "nes",
	lualine_theme = M.make_lualine_theme({
		bg = colors.bg,
		fg = colors.fg,
		b_bg = colors.green,
		normal_accent = colors.red,
		insert_accent = colors.brightred,
		visual_accent = colors.magenta,
		replace_accent = colors.black,
		command_accent = colors.yellow,
	}),
}
