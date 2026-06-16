local colors = {
	bg = "#ffffff",
	fg = "#000000",
	black = "#ffffff",
	red = "#2a2a2a",
	green = "#3a3a3a",
	yellow = "#4a4a4a",
	blue = "#1a1a1a",
	magenta = "#2e2e2e",
	cyan = "#3e3e3e",
	white = "#000000",
	brightblack = "#c0c0c0",
	brightred = "#2a2a2a",
	brightgreen = "#3a3a3a",
	brightyellow = "#4a4a4a",
	brightblue = "#1a1a1a",
	brightmagenta = "#2e2e2e",
	brightcyan = "#3e3e3e",
	brightwhite = "#000000",
	selection = "#1a1a1a",
	accent = "#6e6e6e",
}

local white_theme = {
	normal = {
		a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
		b = { fg = colors.bg, bg = colors.accent },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.white, gui = "bold" },
		b = { fg = colors.bg, bg = colors.accent },
		c = { fg = colors.fg, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.bg, bg = colors.accent },
		c = { fg = colors.fg, bg = colors.bg },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		b = { fg = colors.bg, bg = colors.accent },
		c = { fg = colors.fg, bg = colors.bg },
	},
	command = {
		a = { fg = colors.bg, bg = colors.cyan, gui = "bold" },
		b = { fg = colors.bg, bg = colors.accent },
		c = { fg = colors.fg, bg = colors.bg },
	},
	inactive = {
		a = { fg = colors.accent, bg = colors.bg },
		b = { fg = colors.accent, bg = colors.bg },
		c = { fg = colors.accent, bg = colors.bg },
	},
}

vim.pack.add({
	github("bjarneo/white.nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

return {
	colorscheme = "white",
	lualine_theme = white_theme,
}
