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
    {
        "ray-x/go.nvim",
        dependencies = { -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = { "CmdlineEnter" },
        ft = { "go", 'gomod' },
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },
}
