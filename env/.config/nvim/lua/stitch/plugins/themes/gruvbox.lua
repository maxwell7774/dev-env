vim.pack.add({
	github("ellisonleao/gruvbox.nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

require("gruvbox").setup()

return {
	colorscheme = "gruvbox",
	lualine_theme = "gruvbox",
	background = "dark",
}
