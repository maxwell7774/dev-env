local colors = {
	bg = "#101010",
	fg = "#CECFC9",
	black = "#000000",
	red = "#D93F37",
	green = "#9A9D9A",
	yellow = "#9A9D9A",
	blue = "#9A9D9A",
	magenta = "#D93F37",
	cyan = "#9A9D9A",
	white = "#CECFC9",
	brightred = "#DA0F0F",
	brightwhite = "#FFFFFF",
}

local nes_theme = {
	normal = {
		a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		b = { fg = colors.bg, bg = colors.green },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.brightred, gui = "bold" },
		b = { fg = colors.bg, bg = colors.green },
		c = { fg = colors.fg, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.magenta, gui = "bold" },
		b = { fg = colors.bg, bg = colors.green },
		c = { fg = colors.fg, bg = colors.bg },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.black, gui = "bold" },
		b = { fg = colors.bg, bg = colors.green },
		c = { fg = colors.fg, bg = colors.bg },
	},
	command = {
		a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.bg, bg = colors.green },
		c = { fg = colors.fg, bg = colors.bg },
	},
	inactive = {
		a = { fg = colors.fg, bg = colors.bg },
		b = { fg = colors.bg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	},
}

vim.pack.add({
	github("bjarneo/nes.nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

return {
	colorscheme = "nes",
	lualine_theme = nes_theme,
}
