local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#05182e",
	fg = "#f6dcac",
	black = "#00172e",
	red = "#f85525",
	green = "#028391",
	yellow = "#e97b3c",
	blue = "#faa968",
	magenta = "#3f8f8a",
	cyan = "#8cbfb8",
	brightblack = "#134e5a",
}

M.add_plugins("OldJobobo/retro-82.nvim")

return {
	colorscheme = "retro-82",
	lualine_theme = M.make_lualine_theme({
		a_fg = colors.black,
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
