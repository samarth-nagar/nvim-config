return {
	"hedyhli/outline.nvim",
	lazy = true,
	cmd = { "Outline", "OutlineOpen" },
	keys = { -- Example mapping to toggle outline
		{ "-", "<cmd>Outline<CR>", desc = "Toggle outline" },
	},
	opts = {
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
			--relative_width = true,
			show_numbers = false,
			width = 18
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
	},
}
