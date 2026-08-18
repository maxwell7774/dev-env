local M = require("stitch.plugins.themes.init_utils")

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
	selection_bg = "#403e41",
}

M.add_plugins("gthelding/monokai-pro.nvim")

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
			MiniIconsCyan = { fg = "#85dacc" },
		}
	end,
})

return {
	colorscheme = "monokai-pro",
	lualine_theme = M.make_lualine_theme({
		bg = colors.bg,
		fg = colors.fg,
		b_bg = colors.black,
		normal_accent = colors.red,
		insert_accent = colors.green,
		visual_accent = colors.magenta,
		replace_accent = colors.yellow,
		command_accent = colors.blue,
	}),
}
