return {
	"simrat39/symbols-outline.nvim",
	cmd = { "SymbolsOutline", "SymbolsOutlineOpen" },
	keys = { { "-", "<cmd>SymbolsOutline<cr>" } },
	config = function()
		require("symbols-outline").setup()
	end,
}
