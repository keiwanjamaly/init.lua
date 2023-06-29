-- easier file navigation with automatic centering
vim.keymap.set("n", "K", "<C-u>zz")
vim.keymap.set("n", "J", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-s>", ":w<cr>")

vim.keymap.set("n", "<esc>", ":noh<cr>", { silent = true })

-- faster window navigation
vim.keymap.set("n", "<C-J>", "<C-W>j")
vim.keymap.set("n", "<C-K>", "<C-W>k")
vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-L>", "<C-W>l")

vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>v', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>s<C-j>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>s', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>v<C-l>', { silent = true })
