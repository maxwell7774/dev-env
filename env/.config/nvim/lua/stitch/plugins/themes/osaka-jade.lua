local M = require("stitch.plugins.themes.init_utils")

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
}

M.add_plugins("ribru17/bamboo.nvim")

require("bamboo").setup({
	transparent = true,
})

return {
	colorscheme = "bamboo",
	lualine_theme = M.make_lualine_theme({
		bg = colors.bg,
		fg = colors.fg,
		b_bg = colors.black,
		normal_accent = colors.green,
		insert_accent = colors.blue,
		visual_accent = colors.magenta,
		replace_accent = colors.red,
		command_accent = colors.yellow,
	}),
	apply = function()
		require("bamboo").load()
	end,
}
