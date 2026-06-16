vim.pack.add({
	github("folke/trouble.nvim"),
	github("nvim-tree/nvim-web-devicons"),
})

require("trouble").setup({
	modes = {
		diagnostics = {
			auto_open = false,
			auto_close = true,
			win = { size = 10 },
		},
	},
})

vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "trouble",
	callback = function()
		vim.cmd("wincmd p")
		vim.cmd("wincmd w")
	end,
})

vim.api.nvim_set_hl(0, "TroubleNormal", { link = "Normal" })
vim.api.nvim_set_hl(0, "TroubleNormalNC", { link = "Normal" })

vim.keymap.set("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set(
	"n",
	"<leader>tb",
	"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
	{ desc = "Buffer Diagnostics (Trouble)" }
)
vim.keymap.set("n", "<leader>tq", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix (Trouble)" })
