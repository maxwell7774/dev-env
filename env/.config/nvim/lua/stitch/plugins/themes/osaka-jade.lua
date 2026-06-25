local colors = {
	bg = "#111c18",
	fg = "#C1C497",
	black = "#23372B",
	red = "#FF5345",
	green = "#549e6a",
	yellow = "#459451",
	blue = "#509475",
	magenta = "#D2689C",
	cyan = "#2DD5B7",
	white = "#F6F5DD",
	brightblack = "#53685B",
	brightred = "#db9f9c",
	brightgreen = "#143614",
	brightyellow = "#E5C736",
	brightblue = "#ACD4CF",
	brightmagenta = "#75bbb3",
	brightcyan = "#8CD3CB",
	brightwhite = "#9eebb3",
}

local osaka_jade_theme = {
	normal = {
		a = { fg = colors.bg, bg = colors.green, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black },
		c = { fg = colors.fg, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.magenta, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black },
		c = { fg = colors.fg, bg = colors.bg },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black },
		c = { fg = colors.fg, bg = colors.bg },
	},
	command = {
		a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black },
		c = { fg = colors.fg, bg = colors.bg },
	},
	inactive = {
		a = { fg = colors.fg, bg = colors.bg },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	},
}

vim.pack.add({
	github("ribru17/bamboo.nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

require("bamboo").setup({
	transparent = true,
})

return {
	colorscheme = "bamboo",
	lualine_theme = osaka_jade_theme,
	apply = function()
		require("bamboo").load()
	end,
}
