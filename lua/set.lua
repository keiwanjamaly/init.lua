-- this is handled by focus.nvim
-- vim.opt.nu = true
vim.opt.relativenumber = true

-- vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- vim.opt.sidescroll = 0
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.cmd("filetype plugin on")

-- disable netrw, since it is handled by oil.nvim
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.spell = true
vim.opt.spelllang = { 'en_us' }

vim.opt.colorcolumn = { 81, 121 }

-- vim.g.vimtex_compiler_engine = 'lualatex'
