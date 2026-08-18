local M = require("stitch.plugins.themes.init_utils")
M.add_plugins("catppuccin/nvim")

require("catppuccin").setup({
	flavour = "macchiato",
})

return {
	colorscheme = "catppuccin",
	lualine_theme = "catppuccin",
}
