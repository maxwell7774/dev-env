local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#060B1E",
	fg = "#ffcead",
	red = "#ED5B5A",
	green = "#92a593",
	yellow = "#E9BB4F",
	blue = "#7d82d9",
	magenta = "#c89dc1",
	cyan = "#a3bfd1",
	brightblack = "#6d7db6",
}

M.add_plugins("bjarneo/ethereal.nvim")

require("ethereal").setup()

return {
	colorscheme = "ethereal",
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
