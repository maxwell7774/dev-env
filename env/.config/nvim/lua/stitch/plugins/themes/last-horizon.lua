local M = require("stitch.plugins.themes.init_utils")

local colors = {
	bg = "#0c0b0c",
	fg = "#FAFCFB",
	black = "#090809",
	red = "#c38b7b",
	green = "#87a9b0",
	yellow = "#6B5E73",
	blue = "#b59790",
	magenta = "#c4d8e2",
	cyan = "#a5a0b6",
	white = "#e2dddc",
	brightblack = "#584e51",
	brightred = "#c38b7b",
	brightgreen = "#87a9b0",
	brightyellow = "#6B5E73",
	brightblue = "#b59790",
	brightmagenta = "#c4d8e2",
	brightcyan = "#a5a0b6",
	brightwhite = "#FAFCFB",
	selection = "#584e51",
	accent = "#b59790",
}

local function setup_last_horizon_theme()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.background = "dark"
	vim.g.colors_name = "last-horizon"

	local function highlight(group, color)
		local style = color.style and "gui=" .. color.style or "gui=NONE"
		local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
		local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
		local sp = color.sp and "guisp=" .. color.sp or ""
		vim.cmd(string.format("highlight %s %s %s %s %s", group, style, fg, bg, sp))
	end

	-- Editor highlights
	highlight("Normal", { fg = colors.fg, bg = colors.bg })
	highlight("NormalFloat", { fg = colors.fg, bg = colors.bg })
	highlight("Comment", { fg = colors.brightblack, style = "italic" })
	highlight("Cursor", { fg = colors.bg, bg = colors.fg })
	highlight("CursorLine", { bg = colors.selection })
	highlight("CursorLineNr", { fg = colors.blue, style = "bold" })
	highlight("LineNr", { fg = colors.brightblack })
	highlight("Visual", { bg = colors.selection })
	highlight("VisualNOS", { bg = colors.selection })

	-- Syntax highlighting
	highlight("Constant", { fg = colors.cyan })
	highlight("String", { fg = colors.green })
	highlight("Character", { fg = colors.green })
	highlight("Number", { fg = colors.cyan })
	highlight("Boolean", { fg = colors.cyan })
	highlight("Float", { fg = colors.cyan })

	highlight("Identifier", { fg = colors.fg })
	highlight("Function", { fg = colors.magenta })

	highlight("Statement", { fg = colors.blue })
	highlight("Conditional", { fg = colors.blue })
	highlight("Repeat", { fg = colors.blue })
	highlight("Label", { fg = colors.blue })
	highlight("Operator", { fg = colors.cyan })
	highlight("Keyword", { fg = colors.blue })
	highlight("Exception", { fg = colors.red })

	highlight("PreProc", { fg = colors.yellow })
	highlight("Include", { fg = colors.blue })
	highlight("Define", { fg = colors.blue })
	highlight("Macro", { fg = colors.red })
	highlight("PreCondit", { fg = colors.yellow })

	highlight("Type", { fg = colors.yellow })
	highlight("StorageClass", { fg = colors.yellow })
	highlight("Structure", { fg = colors.yellow })
	highlight("Typedef", { fg = colors.yellow })

	highlight("Special", { fg = colors.cyan })
	highlight("SpecialChar", { fg = colors.cyan })
	highlight("Tag", { fg = colors.magenta })
	highlight("Delimiter", { fg = colors.white })
	highlight("SpecialComment", { fg = colors.brightblack })
	highlight("Debug", { fg = colors.red })

	highlight("Underlined", { style = "underline" })
	highlight("Error", { fg = colors.red, bg = colors.bg })
	highlight("Todo", { fg = colors.yellow, bg = colors.bg, style = "bold" })

	-- UI elements
	highlight("Pmenu", { fg = colors.fg, bg = colors.selection })
	highlight("PmenuSel", { fg = colors.bg, bg = colors.blue })
	highlight("PmenuSbar", { bg = colors.selection })
	highlight("PmenuThumb", { bg = colors.blue })

	highlight("StatusLine", { fg = colors.blue, bg = colors.selection })
	highlight("StatusLineNC", { fg = colors.brightblack, bg = colors.selection })

	highlight("TabLine", { fg = colors.white, bg = colors.selection })
	highlight("TabLineFill", { bg = colors.black })
	highlight("TabLineSel", { fg = colors.bg, bg = colors.blue })

	highlight("VertSplit", { fg = colors.brightblack })
	highlight("SignColumn", { bg = colors.bg })
	highlight("ColorColumn", { bg = colors.selection })

	-- Search
	highlight("Search", { fg = colors.bg, bg = colors.yellow })
	highlight("IncSearch", { fg = colors.bg, bg = colors.cyan })

	-- Diff
	highlight("DiffAdd", { fg = colors.green, bg = colors.bg })
	highlight("DiffChange", { fg = colors.yellow, bg = colors.bg })
	highlight("DiffDelete", { fg = colors.red, bg = colors.bg })
	highlight("DiffText", { fg = colors.blue, bg = colors.bg })

	-- Git signs
	highlight("GitSignsAdd", { fg = colors.green })
	highlight("GitSignsChange", { fg = colors.yellow })
	highlight("GitSignsDelete", { fg = colors.red })

	-- Treesitter highlights
	highlight("@variable", { fg = colors.fg })
	highlight("@variable.builtin", { fg = colors.cyan })
	highlight("@function", { fg = colors.magenta })
	highlight("@function.builtin", { fg = colors.magenta })
	highlight("@keyword", { fg = colors.blue })
	highlight("@keyword.function", { fg = colors.blue })
	highlight("@keyword.operator", { fg = colors.blue })
	highlight("@string", { fg = colors.green })
	highlight("@number", { fg = colors.cyan })
	highlight("@boolean", { fg = colors.cyan })
	highlight("@constant", { fg = colors.cyan })
	highlight("@constant.builtin", { fg = colors.cyan })
	highlight("@operator", { fg = colors.cyan })
	highlight("@type", { fg = colors.yellow })
	highlight("@type.builtin", { fg = colors.yellow })
	highlight("@parameter", { fg = colors.fg })
	highlight("@property", { fg = colors.cyan })
	highlight("@comment", { fg = colors.brightblack, style = "italic" })

	-- Diagnostic
	highlight("DiagnosticError", { fg = colors.red })
	highlight("DiagnosticWarn", { fg = colors.yellow })
	highlight("DiagnosticInfo", { fg = colors.blue })
	highlight("DiagnosticHint", { fg = colors.cyan })

	-- Terminal colors
	vim.g.terminal_color_0 = colors.black
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_2 = colors.green
	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_4 = colors.blue
	vim.g.terminal_color_5 = colors.magenta
	vim.g.terminal_color_6 = colors.cyan
	vim.g.terminal_color_7 = colors.white
	vim.g.terminal_color_8 = colors.brightblack
	vim.g.terminal_color_9 = colors.brightred
	vim.g.terminal_color_10 = colors.brightgreen
	vim.g.terminal_color_11 = colors.brightyellow
	vim.g.terminal_color_12 = colors.brightblue
	vim.g.terminal_color_13 = colors.brightmagenta
	vim.g.terminal_color_14 = colors.brightcyan
	vim.g.terminal_color_15 = colors.brightwhite
end

M.add_plugins()

return {
	colorscheme = "last-horizon",
	lualine_theme = M.make_lualine_theme({
		bg = colors.bg,
		fg = colors.fg,
		b_bg = colors.brightblack,
		normal_accent = colors.blue,
		insert_accent = colors.green,
		visual_accent = colors.magenta,
		replace_accent = colors.red,
		command_accent = colors.cyan,
	}),
	apply = setup_last_horizon_theme,
}
