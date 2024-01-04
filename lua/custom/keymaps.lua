--
vim.api.nvim_set_keymap('n', '<M-t>', ':! ct <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'E', '$', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-r>', ':! run <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<F12>', ':CodyToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fa', [[:lua require('telescope.builtin').find_files({ hidden = true })<CR>]],
    { noremap = true, silent = true, desc = '[S]earch [F]iles' })

vim.keymap.set("n", "<leader>gw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leadergd>", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>gq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>gl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
-- Lua
