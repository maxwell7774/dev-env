vim.pack.add({ github("romus204/tree-sitter-manager.nvim") })
require("tree-sitter-manager").setup({
	ensure_installed = {
		"bash",
		"c",
		"css",
		"json",
		"gitignore",
		"go",
		"gotmpl",
		"helm",
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

vim.filetype.add({
	extension = {
		gohtml = "gotmpl", -- Tells Neovim .gohtml maps to the standard gotmpl filetype
	},
})
