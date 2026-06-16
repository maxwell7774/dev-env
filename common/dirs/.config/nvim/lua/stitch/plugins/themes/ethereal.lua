local colors = {
	bg = "#060B1E",
	fg = "#ffcead",
	black = "#060B1E",
	red = "#ED5B5A",
	green = "#92a593",
	yellow = "#E9BB4F",
	blue = "#7d82d9",
	magenta = "#c89dc1",
	cyan = "#a3bfd1",
	orange = "#F99957",
	brightblack = "#6d7db6",
	brightred = "#faaaa9",
	brightgreen = "#c4cfc4",
	brightyellow = "#f7dc9c",
	brightblue = "#c2c4f0",
	brightmagenta = "#ead7e7",
	brightcyan = "#dfeaf0",
	brightwhite = "#ffcead",
	accent = "#7d82d9",
	selection_bg = "#ffcead",
	selection_fg = "#060B1E",
}

local ethereal_theme = {
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
		a = { fg = colors.fg, bg = colors.brightblack },
		b = { fg = colors.fg, bg = colors.brightblack },
		c = { fg = colors.fg, bg = colors.brightblack },
	},
}

vim.pack.add({
	github("bjarneo/ethereal.nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

require("ethereal").setup()

return {
	colorscheme = "ethereal",
	lualine_theme = ethereal_theme,
}
