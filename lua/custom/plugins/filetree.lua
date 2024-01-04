return {
  "nvim-tree/nvim-tree.lua",
  lazy = true,
  config = function()
    -- load the nvim-tree here
    require("nvim-tree").setup()
  end,

  view = {
    width = "50%",
  },
}
