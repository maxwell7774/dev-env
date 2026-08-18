local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#16242d",
	fg = "#d6e2ee",
	black = "#1b2d40",
	red = "#4d86b0",
	green = "#5e95bc",
	yellow = "#6fa4c9",
	blue = "#6fb8e3",
	magenta = "#8bc9eb",
	cyan = "#b4e4f6",
	brightblack = "#304860",
	accent = "#f2fcff",
}

M.add_plugins("omacom-io/lumon.nvim")

return {
	colorscheme = "lumon",
	lualine_theme = M.make_lualine_theme({
		a_fg = colors.black,
		bg = colors.bg,
		fg = colors.fg,
		b_bg = colors.brightblack,
		normal_accent = colors.blue,
		insert_accent = colors.cyan,
		visual_accent = colors.accent,
		replace_accent = colors.red,
		command_accent = colors.accent,
	}),
}
