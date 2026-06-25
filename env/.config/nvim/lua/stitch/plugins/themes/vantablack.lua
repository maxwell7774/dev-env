local colors = {
	bg = "#0d0d0d",
	fg = "#ffffff",
	black = "#0d0d0d",
	red = "#a4a4a4",
	green = "#b6b6b6",
	yellow = "#cecece",
	blue = "#8d8d8d",
	magenta = "#9b9b9b",
	cyan = "#b0b0b0",
	white = "#ececec",
	brightblack = "#fdfdfd",
	brightred = "#a4a4a4",
	brightgreen = "#b6b6b6",
	brightyellow = "#cecece",
	brightblue = "#8d8d8d",
	brightmagenta = "#9b9b9b",
	brightcyan = "#b0b0b0",
	brightwhite = "#ffffff",
	selection = "#ffffff",
	accent = "#8d8d8d",
}

local vantablack_theme = {
	normal = {
		a = { fg = colors.bg, bg = colors.white, gui = "bold" },
		b = { fg = colors.fg, bg = colors.accent },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.brightwhite, gui = "bold" },
		b = { fg = colors.fg, bg = colors.accent },
		c = { fg = colors.fg, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.fg, bg = colors.accent },
		c = { fg = colors.fg, bg = colors.bg },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		b = { fg = colors.fg, bg = colors.accent },
		c = { fg = colors.fg, bg = colors.bg },
	},
	command = {
		a = { fg = colors.bg, bg = colors.cyan, gui = "bold" },
		b = { fg = colors.fg, bg = colors.accent },
		c = { fg = colors.fg, bg = colors.bg },
	},
	inactive = {
		a = { fg = colors.accent, bg = colors.bg },
		b = { fg = colors.accent, bg = colors.bg },
		c = { fg = colors.accent, bg = colors.bg },
	},
}

vim.pack.add({
	github("bjarneo/vantablack.nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

return {
	colorscheme = "vantablack",
	lualine_theme = vantablack_theme,
}
