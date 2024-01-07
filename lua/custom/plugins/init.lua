return {
    -- Catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
    },
    {
        "prichrd/netrw.nvim"
    },
    { 'akinsho/toggleterm.nvim', version = "*", config = true }
    , {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "jose-elias-alvarez/null-ls.nvim"
    },
},
    "norcalli/nvim-colorizer.lua",
    "SmiteshP/nvim-navic",
    "rcarriga/nvim-notify",
    {
        'crusj/structrue-go.nvim',
        branch = "main"
    },
    'nvim-telescope/telescope-symbols.nvim',
    -- other plugins...
}
