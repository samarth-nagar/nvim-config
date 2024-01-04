--  Optionally, you can also install nvim-telescope/telescope.nvim to use some search functionality.
return {
	"sourcegraph/sg.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("sg").setup({
			enable_cody = true,
		})
	end,
}
