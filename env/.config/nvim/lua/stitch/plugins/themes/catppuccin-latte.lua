local M = require("stitch.plugins.themes.init_utils")
M.add_plugins("catppuccin/nvim")

require("catppuccin").setup({
	flavour = "latte",
})

return {
	colorscheme = "catppuccin-latte",
	lualine_theme = "catppuccin",
}
