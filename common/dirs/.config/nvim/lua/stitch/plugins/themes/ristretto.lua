local colors = {
	bg = "#2c2525",
	fg = "#e6d9db",
	black = "#72696a",
	red = "#fd6883",
	green = "#adda78",
	yellow = "#f9cc6c",
	blue = "#f38d70",
	magenta = "#a8a9eb",
	cyan = "#85dacc",
	white = "#e6d9db",
	brightblack = "#948a8b",
	brightred = "#ff8297",
	brightgreen = "#c8e292",
	brightyellow = "#fcd675",
	brightblue = "#f8a788",
	brightmagenta = "#bebffd",
	brightcyan = "#9bf1e1",
	brightwhite = "#f1e5e7",
	selection_bg = "#403e41",
}

local ristretto_theme = {
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
	github("gthelding/monokai-pro.nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

require("monokai-pro").setup({
	filter = "ristretto",
	override = function()
		return {
			NonText = { fg = "#948a8b" },
			MiniIconsGrey = { fg = "#948a8b" },
			MiniIconsRed = { fg = "#fd6883" },
			MiniIconsBlue = { fg = "#85dacc" },
			MiniIconsGreen = { fg = "#adda78" },
			MiniIconsYellow = { fg = "#f9cc6c" },
			MiniIconsOrange = { fg = "#f38d70" },
			MiniIconsPurple = { fg = "#a8a9eb" },
			MiniIconsAzure = { fg = "#a8a9eb" },
			MiniIconsCyan = { fg = "#85dacc" }, -- same value as MiniIconsBlue for consistency
		}
	end,
})

return {
	colorscheme = "monokai-pro",
	lualine_theme = ristretto_theme,
}
