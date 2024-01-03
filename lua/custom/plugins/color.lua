return {
	"norcalli/nvim-colorizer.lua",
	lazy = true,    -- make sure to load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here
		require('colorizer').setup()
	end,
}
