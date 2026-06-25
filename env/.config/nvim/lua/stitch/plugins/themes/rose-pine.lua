local colors = {
	bg = "#faf4ed",
	fg = "#575279",
	black = "#f2e9e1",
	red = "#b4637a",
	green = "#286983",
	yellow = "#ea9d34",
	blue = "#56949f",
	magenta = "#907aa9",
	cyan = "#d7827e",
	white = "#575279",
	brightblack = "#9893a5",
	brightred = "#b4637a",
	brightgreen = "#286983",
	brightyellow = "#ea9d34",
	brightblue = "#56949f",
	brightmagenta = "#907aa9",
	brightcyan = "#d7827e",
	brightwhite = "#575279",
	selection_bg = "#dfdad9",
}

local rose_pine_theme = {
	normal = {
		a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.green, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black },
		c = { fg = colors.fg, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.magenta, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black },
		c = { fg = colors.fg, bg = colors.bg },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black },
		c = { fg = colors.fg, bg = colors.bg },
	},
	command = {
		a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black },
		c = { fg = colors.fg, bg = colors.bg },
	},
	inactive = {
		a = { fg = colors.fg, bg = colors.selection_bg },
		b = { fg = colors.fg, bg = colors.selection_bg },
		c = { fg = colors.fg, bg = colors.selection_bg },
	},
}

vim.pack.add({
	github("rose-pine/neovim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

return {
	colorscheme = "rose-pine-dawn",
	lualine_theme = rose_pine_theme,
}
