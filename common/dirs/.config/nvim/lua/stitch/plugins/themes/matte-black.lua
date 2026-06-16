local colors = {
	bg = "#121212",
	fg = "#bebebe",
	red = "#D35F5F",
	yellow = "#FFC107",
	darkred = "#b91c1c",
	orange = "#e68e0d",
	brightred = "#B91C1C",
	brightyellow = "#FFC107",
	white = "#bebebe",
	brightbg = "#8a8a8d",
	cursor = "#eaeaea",
	selection_bg = "#515151",
	selection_fg = "#bebebe",
}
local matteblack_theme = {
	normal = {
		a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightbg },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.brightred, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightbg },
		c = { fg = colors.fg, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.orange, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightbg },
		c = { fg = colors.fg, bg = colors.bg },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.darkred, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightbg },
		c = { fg = colors.fg, bg = colors.bg },
	},
	command = {
		a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightbg },
		c = { fg = colors.fg, bg = colors.bg },
	},
	inactive = {
		a = { fg = colors.fg, bg = colors.bg },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	},
}
vim.pack.add({
	github("tahayvr/matteblack.nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})
return {
	colorscheme = "matteblack",
	lualine_theme = matteblack_theme,
}
