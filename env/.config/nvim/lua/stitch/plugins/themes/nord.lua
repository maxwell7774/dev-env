local M = require("stitch.plugins.themes.init_utils")
M.add_plugins("EdenEast/nightfox.nvim")

require("nightfox").setup({})

return {
	colorscheme = "nordfox",
	lualine_theme = "nord",
}
