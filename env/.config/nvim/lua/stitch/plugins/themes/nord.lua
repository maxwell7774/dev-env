vim.pack.add({
	github("EdenEast/nightfox.nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})

require("nightfox").setup({})

return {
	colorscheme = "nordfox",
	lualine_theme = "nord",
}
