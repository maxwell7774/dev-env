local colors = {
	bg = "#222222",
	fg = "#c2c2b0",
	black = "#000000",
	red = "#685742",
	green = "#5f875f",
	yellow = "#b36d43",
	blue = "#78824b",
	magenta = "#bb7744",
	cyan = "#c9a554",
	white = "#d7c483",
	brightblack = "#666666",
	brightred = "#685742",
	brightgreen = "#5f875f",
	brightyellow = "#b36d43",
	brightblue = "#78824b",
	brightmagenta = "#bb7744",
	brightcyan = "#c9a554",
	brightwhite = "#d7c483",
	selection = "#78824b",
	cursor = "#c7c7c7",
}

local miasma_theme = {
	normal = {
		a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightblack },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.green, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightblack },
		c = { fg = colors.fg, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.magenta, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightblack },
		c = { fg = colors.fg, bg = colors.bg },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightblack },
		c = { fg = colors.fg, bg = colors.bg },
	},
	command = {
		a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightblack },
		c = { fg = colors.fg, bg = colors.bg },
	},
	inactive = {
		a = { fg = colors.fg, bg = colors.bg },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	},
}

vim.pack.add({
	github("xero/miasma.nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

return {
	colorscheme = "miasma",
	lualine_theme = miasma_theme,
}
