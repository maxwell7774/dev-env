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
	white = "#a7c9c6",
	brightblack = "#134e5a",
	brightred = "#f85525",
	brightgreen = "#028391",
	brightyellow = "#e97b3c",
	brightblue = "#faa968",
	brightmagenta = "#3f8f8a",
	brightcyan = "#8cbfb8",
	brightwhite = "#f6dcac",
	selection = "#faa968",
	accent = "#faa968",
}

local retro82_theme = {
	normal = {
		a = { fg = colors.black, bg = colors.blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightblack },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.black, bg = colors.green, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightblack },
		c = { fg = colors.fg, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.black, bg = colors.magenta, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightblack },
		c = { fg = colors.fg, bg = colors.bg },
	},
	replace = {
		a = { fg = colors.black, bg = colors.red, gui = "bold" },
		b = { fg = colors.fg, bg = colors.brightblack },
		c = { fg = colors.fg, bg = colors.bg },
	},
	command = {
		a = { fg = colors.black, bg = colors.yellow, gui = "bold" },
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
	github("OldJobobo/retro-82.nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

return {
	colorscheme = "retro-82",
	lualine_theme = retro82_theme,
}
