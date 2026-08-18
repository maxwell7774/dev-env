local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#1f1f28",
	fg = "#dcd7ba",
	red = "#c34043",
	green = "#76946a",
	yellow = "#c0a36e",
	blue = "#7e9cd8",
	magenta = "#957fb8",
	cyan = "#6a9589",
	gray = "#727169",
}

M.add_plugins("rebelot/kanagawa.nvim")

require("kanagawa").setup({
	transparent = true,
})

return {
	colorscheme = "kanagawa-wave",
	lualine_theme = M.make_lualine_theme({
		bg = colors.bg,
		fg = colors.fg,
		b_bg = colors.gray,
		normal_accent = colors.blue,
		insert_accent = colors.green,
		visual_accent = colors.magenta,
		replace_accent = colors.red,
		command_accent = colors.yellow,
	}),
}
