local colors = {
	bg = "#FFFCF0",
	fg = "#100F0F",
	black = "#100F0F",
	red = "#D14D41",
	green = "#879A39",
	yellow = "#D0A215",
	blue = "#205EA6",
	magenta = "#CE5D97",
	cyan = "#3AA99F",
	white = "#FFFCF0",
	brightblack = "#100F0F",
	brightred = "#D14D41",
	brightgreen = "#879A39",
	brightyellow = "#D0A215",
	brightblue = "#4385BE",
	brightmagenta = "#CE5D97",
	brightcyan = "#3AA99F",
	brightwhite = "#FFFCF0",
	selection = "#CECDC3",
}

local flexoki_theme = {
	normal = {
		a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.selection },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.green, gui = "bold" },
		b = { fg = colors.fg, bg = colors.selection },
		c = { fg = colors.fg, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.magenta, gui = "bold" },
		b = { fg = colors.fg, bg = colors.selection },
		c = { fg = colors.fg, bg = colors.bg },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		b = { fg = colors.fg, bg = colors.selection },
		c = { fg = colors.fg, bg = colors.bg },
	},
	command = {
		a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.fg, bg = colors.selection },
		c = { fg = colors.fg, bg = colors.bg },
	},
	inactive = {
		a = { fg = colors.fg, bg = colors.bg },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	},
}

vim.pack.add({
	github("kepano/flexoki-neovim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

return {
	colorscheme = "flexoki-light",
	lualine_theme = flexoki_theme,
}
