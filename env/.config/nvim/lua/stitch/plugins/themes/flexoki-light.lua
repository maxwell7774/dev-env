local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#FFFCF0",
	fg = "#100F0F",
	red = "#D14D41",
	green = "#879A39",
	yellow = "#D0A215",
	blue = "#205EA6",
	magenta = "#CE5D97",
	cyan = "#3AA99F",
	selection = "#CECDC3",
}

M.add_plugins("kepano/flexoki-neovim")

return {
	colorscheme = "flexoki-light",
	lualine_theme = M.make_lualine_theme({
		bg = colors.bg,
		fg = colors.fg,
		b_bg = colors.selection,
		normal_accent = colors.blue,
		insert_accent = colors.green,
		visual_accent = colors.magenta,
		replace_accent = colors.red,
		command_accent = colors.yellow,
	}),
}
