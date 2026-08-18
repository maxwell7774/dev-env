local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#0d0d0d",
	fg = "#ffffff",
	red = "#a4a4a4",
	green = "#b6b6b6",
	yellow = "#cecece",
	cyan = "#b0b0b0",
	white = "#ececec",
	accent = "#8d8d8d",
}

M.add_plugins("bjarneo/vantablack.nvim")

local theme = M.make_lualine_theme({
	a_fg = colors.bg,
	bg = colors.bg,
	fg = colors.fg,
	b_bg = colors.accent,
	normal_accent = colors.white,
	insert_accent = colors.fg,
	visual_accent = colors.yellow,
	replace_accent = colors.red,
	command_accent = colors.cyan,
})

theme.inactive = {
	a = { fg = colors.accent, bg = colors.bg },
	b = { fg = colors.accent, bg = colors.bg },
	c = { fg = colors.accent, bg = colors.bg },
}

return {
	colorscheme = "vantablack",
	lualine_theme = theme,
}
