vim.pack.add({
	github("neanias/everforest-nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

require("everforest").setup({
	background = "hard",
	transparent_background_level = 1,
	italics = true,
	disable_italic_comments = false,
	sign_column_background = "none",
	ui_contrast = "low",
	dim_inactive_windows = false,
	diagnostic_text_highlight = true,
	diagnostic_virtual_text = "coloured",
	spell_foreground = false,
	diagnostic_line_highlight = true,
})

return {
	colorscheme = "everforest",
	lualine_theme = "everforest",
}
