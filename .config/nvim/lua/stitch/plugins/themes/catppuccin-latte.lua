vim.pack.add({
	github("catppuccin/nvim"),
	github("nvim-tree/nvim-web-devicons"),
	github("nvim-lualine/lualine.nvim"),
})
require("catppuccin").setup({
	flavour = "latte", -- other options: "mocha", "frappe", "macchiato"
})

return {
	colorscheme = "catppuccin",
	lualine_theme = "catppuccin",
}
