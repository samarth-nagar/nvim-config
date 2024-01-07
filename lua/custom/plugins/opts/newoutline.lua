-- This script converts your existing setup opts from symbols-outline.nvim to
-- the new format for outline.nvim.
--
-- You do not need this if your old symbols-outline.nvim config was empty.
--
-- 1. Save this file somewhere temporary and open this file in nvim.
-- 2. Paste your old symbols-outline setup opts in the 'opts' table,
-- 3. Put your cursor on the line of 'your_new_opts' table.
-- 4. Keeping your cursor there, run ':luafile %'
-- 5. You can then '$yi{' to yank it in register 0
--
-- Read about all the new features and improvements on:
--     https://github.com/hedyhli/outline.nvim/issues/12
--
-- If you encounter any problems, please open an issue.
--
-- Thanks for using outline.nvim!

local opts = {

	--- Example:
	highlight_hovered_item = true,
	width = 20, -- Adjust the width re
	show_guides = true,
	auto_preview = true,
	relative_width = true,
	show_symbol_details = true,
	show_numbers = true,
	filter_kind = false,
	position = 'right',
	backends = { "lsp", "treesitter", "markdown", "man" },
	keymaps = { -- These keymaps can be a string or a table for multiple keys
		close = { "<Esc>", "q" },
		goto_location = "<Cr>",
		focus_location = "o",
		hover_symbol = "<C-space>",
		toggle_preview = "K",
		rename_symbol = "r",
		code_actions = "a",
		fold = "h",
		unfold = "l",
		fold_all = "W",
		unfold_all = "E",
		fold_reset = "R",
	},
	lsp_blacklist = {},
	max_height = 20,
	sort = false,
	symbols = {
		File = { icon = "", hl = "@text.uri" },
		Module = { icon = "", hl = "@namespace" },
		Namespace = { icon = "", hl = "@namespace" },
		Package = { icon = "", hl = "@namespace" },
		Class = { icon = "", hl = "@type" },
		Method = { icon = "ƒ", hl = "@method" },
		Property = { icon = "", hl = "@method" },
		Field = { icon = "", hl = "@field" },
		Constructor = { icon = "󰒔", hl = "@constructor" },
		Enum = { icon = "En", hl = "@type" },
		Interface = { icon = "ﰮ ", hl = "@type" },
		Function = { icon = "f()", hl = "@function" },
		Variable = { icon = "󱗝", hl = "@constant" },
		Constant = { icon = "󰅗", hl = "@constant" },
		String = { icon = "", hl = "@string" },
		Number = { icon = "#n", hl = "@number" },
		Boolean = { icon = "0/1", hl = "@boolean" },
		Array = { icon = "", hl = "@constant" },
		Object = { icon = "￼", hl = "@type" },
		Key = { icon = "🔐", hl = "@type" },
		Null = { icon = " ", hl = "@type" },
		EnumMember = { icon = "", hl = "@field" },
		Struct = { icon = "", hl = "@type" },
		Event = { icon = "🗲", hl = "@type" },
		Operator = { icon = "", hl = "@operator" },
		TypeParameter = { icon = "𝙏", hl = "@parameter" },
		Component = { icon = "", hl = "@function" },
		Fragment = { icon = "", hl = "@constant" },
	},
	-- show_guides = false,
	-- fold_markers = {'>', 'v'},
}

---@diagnostic disable-next-line
local your_new_opts = --[[put the cursor on this line]] {
	guides = {
		enabled = true
	},
	keymaps = {
		close = { "<Esc>", "q" },
		code_actions = "a",
		fold = "h",
		fold_all = "W",
		fold_reset = "R",
		goto_location = "<Cr>",
		hover_symbol = "<C-space>",
		peek_location = "o",
		rename_symbol = "r",
		toggle_preview = "K",
		unfold = "l",
		unfold_all = "E"
	},
	outline_items = {
		highlight_hovered_item = true,
		show_symbol_details = true
	},
	outline_window = {
		position = "right",
		relative_width = true,
		show_numbers = true,
		width = 20
	},
	preview_window = {
		auto_preview = true,
		open_hover_on_preview = true
	},
	provider = {
		lsp = {
			blacklist_clients = {}
		}
	},
	symbols = {
		icons = {
			Array = {
				hl = "@constant",
				icon = ""
			},
			Boolean = {
				hl = "@boolean",
				icon = "0/1"
			},
			Class = {
				hl = "@type",
				icon = ""
			},
			Component = {
				hl = "@function",
				icon = ""
			},
			Constant = {
				hl = "@constant",
				icon = "󰅗"
			},
			Constructor = {
				hl = "@constructor",
				icon = "󰒔"
			},
			Enum = {
				hl = "@type",
				icon = "En"
			},
			EnumMember = {
				hl = "@field",
				icon = ""
			},
			Event = {
				hl = "@type",
				icon = "🗲"
			},
			Field = {
				hl = "@field",
				icon = ""
			},
			File = {
				hl = "@text.uri",
				icon = ""
			},
			Fragment = {
				hl = "@constant",
				icon = ""
			},
			Function = {
				hl = "@function",
				icon = "f()"
			},
			Interface = {
				hl = "@type",
				icon = "ﰮ "
			},
			Key = {
				hl = "@type",
				icon = "🔐"
			},
			Method = {
				hl = "@method",
				icon = "ƒ"
			},
			Module = {
				hl = "@namespace",
				icon = ""
			},
			Namespace = {
				hl = "@namespace",
				icon = ""
			},
			Null = {
				hl = "@type",
				icon = " "
			},
			Number = {
				hl = "@number",
				icon = "#n"
			},
			Object = {
				hl = "@type",
				icon = "￼"
			},
			Operator = {
				hl = "@operator",
				icon = ""
			},
			Package = {
				hl = "@namespace",
				icon = ""
			},
			Property = {
				hl = "@method",
				icon = ""
			},
			String = {
				hl = "@string",
				icon = ""
			},
			Struct = {
				hl = "@type",
				icon = ""
			},
			TypeParameter = {
				hl = "@parameter",
				icon = "𝙏"
			},
			Variable = {
				hl = "@constant",
				icon = "󱗝"
			}
		}
	}
}




---------------------------------------------------------------------
----- BEGIN SCRIPT --------------------------------------------------
---------------------------------------------------------------------
local newopts = { symbols = {} }

if opts.symbols then
	newopts.symbols.icons = opts.symbols
	opts.symbols = nil
end
if opts.symbol_blacklist then
	newopts.symbols.filter = opts.symbol_blacklist
	newopts.symbols.filter.exclude = true
	opts.symbol_blacklist = nil
end

if opts.lsp_blacklist then
	newopts.provider = {
		lsp = {
			blacklist_clients = opts.lsp_blacklist
		}
	}
	opts.lsp_blacklist = nil
end

if opts.fold_markers or opts.autofold_depth ~= nil or opts.auto_unfold_hover ~= nil then
	newopts.symbol_folding = {
		autofold_depth = opts.autofold_depth,
		auto_unfold_hover = opts.auto_unfold_hover,
		markers = opts.fold_markers,
	}
	opts.autofold_depth = nil
	opts.auto_unfold_hover = nil
	opts.fold_markers = nil
end

if opts and next(opts) ~= nil then
	newopts.preview_window = {}
	newopts.outline_window = {}
	newopts.outline_items = {}

	for _, v in ipairs({ 'auto_preview', 'border' }) do
		newopts.preview_window[v] = opts[v]
		opts[v] = nil
	end
	if newopts.preview_window.auto_preview == true then
		newopts.preview_window.open_hover_on_preview = true
	end

	if opts.preview_bg_highlight then
		newopts.preview_window.winhl = 'Normal:' .. opts.preview_bg_highlight
		opts.preview_bg_highlight = nil
	end

	for _, v in ipairs({ 'show_symbol_details', 'highlight_hovered_item' }) do
		newopts.outline_items[v] = opts[v]
		opts[v] = nil
	end

	for _, v in ipairs({
		'width', 'relative_width', 'position', 'border', 'wrap', 'auto_close',
		'show_numbers', 'show_relative_numbers', 'show_cursorline',
	}) do
		newopts.outline_window[v] = opts[v]
		opts[v] = nil
	end

	if type(opts.show_guides) == 'boolean' then
		newopts.guides = {}
		newopts.guides.enabled = opts.show_guides
	end
	opts.show_guides = nil

	if opts.keymaps ~= nil then
		newopts.keymaps = opts.keymaps
		newopts.keymaps.peek_location = opts.keymaps.focus_location
		newopts.keymaps.focus_location = nil
		opts.keymaps = nil
	end
end

for _, v in ipairs({ 'outline_items', 'outline_window', 'preview_window', 'symbols' }) do
	if newopts[v] and next(newopts[v]) == nil then
		newopts[v] = nil
	end
end

local all = vim.inspect(newopts)
local lines = vim.split(all, '\n', { plain = true, trimempty = true })
table.remove(lines, 1)
table.remove(lines, #lines)
local curline = vim.api.nvim_win_get_cursor(0)[1]
vim.api.nvim_buf_set_lines(0, curline, curline, true, lines)
---------------------------------------------------------------------
----- END SCRIPT ----------------------------------------------------
---------------------------------------------------------------------
