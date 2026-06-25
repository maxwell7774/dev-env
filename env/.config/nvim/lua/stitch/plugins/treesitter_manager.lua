vim.pack.add({ github("romus204/tree-sitter-manager.nvim") })
require("tree-sitter-manager").setup({
	ensure_installed = {
		"bash",
		"c",
		"css",
		"json",
		"gitignore",
		"go",
		"sql",
		"javascript",
		"typescript",
		"diff",
		"html",
		"lua",
		"luadoc",
		"markdown",
		"markdown_inline",
		"query",
		"vim",
		"vimdoc",
	},
	auto_install = true,
})
