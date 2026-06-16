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
	brightred = "#e82424",
	brightyellow = "#e6c384",
	brightblue = "#7fb4ca",
	brightcyan = "#7aa89f",
}

local kanagwa_theme = {
	normal = {
		a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.gray },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.green, gui = "bold" },
		b = { fg = colors.fg, bg = colors.gray },
		c = { fg = colors.fg, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.magenta, gui = "bold" },
		b = { fg = colors.fg, bg = colors.gray },
		c = { fg = colors.fg, bg = colors.bg },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		b = { fg = colors.fg, bg = colors.gray },
		c = { fg = colors.fg, bg = colors.bg },
	},
	command = {
		a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.fg, bg = colors.gray },
		c = { fg = colors.fg, bg = colors.bg },
	},
	inactive = {
		a = { fg = colors.gray, bg = colors.bg },
		b = { fg = colors.gray, bg = colors.bg },
		c = { fg = colors.gray, bg = colors.bg },
	},
}

vim.pack.add({
	github("rebelot/kanagawa.nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

require("kanagawa").setup({
	transparent = true,
})

return {
	colorscheme = "kanagawa-wave",
	lualine_theme = kanagwa_theme,
}
