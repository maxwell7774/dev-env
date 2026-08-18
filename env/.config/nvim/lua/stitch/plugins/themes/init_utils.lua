local M = {}

function M.add_plugins(...)
	local repos = { ... }
	table.insert(repos, "nvim-tree/nvim-web-devicons")
	table.insert(repos, "nvim-lualine/lualine.nvim")

	local packed = {}
	for _, repo in ipairs(repos) do
		table.insert(packed, github(repo))
	end
	vim.pack.add(packed)
end

function M.make_lualine_theme(opts)
	local a_fg = opts.a_fg or opts.bg
	return {
		normal = {
			a = { fg = a_fg, bg = opts.normal_accent, gui = "bold" },
			b = { fg = opts.fg, bg = opts.b_bg },
			c = { fg = opts.fg, bg = opts.bg },
		},
		insert = {
			a = { fg = a_fg, bg = opts.insert_accent, gui = "bold" },
			b = { fg = opts.fg, bg = opts.b_bg },
			c = { fg = opts.fg, bg = opts.bg },
		},
		visual = {
			a = { fg = a_fg, bg = opts.visual_accent, gui = "bold" },
			b = { fg = opts.fg, bg = opts.b_bg },
			c = { fg = opts.fg, bg = opts.bg },
		},
		replace = {
			a = { fg = a_fg, bg = opts.replace_accent, gui = "bold" },
			b = { fg = opts.fg, bg = opts.b_bg },
			c = { fg = opts.fg, bg = opts.bg },
		},
		command = {
			a = { fg = a_fg, bg = opts.command_accent, gui = "bold" },
			b = { fg = opts.fg, bg = opts.b_bg },
			c = { fg = opts.fg, bg = opts.bg },
		},
		inactive = {
			a = { fg = opts.fg, bg = opts.b_bg },
			b = { fg = opts.fg, bg = opts.b_bg },
			c = { fg = opts.fg, bg = opts.bg },
		},
	}
end

return M
