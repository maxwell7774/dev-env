local M = require("stitch.plugins.themes.init_utils")
M.add_plugins("ellisonleao/gruvbox.nvim")

require("gruvbox").setup()

return {
	colorscheme = "gruvbox",
	lualine_theme = "gruvbox",
	background = "dark",
}
