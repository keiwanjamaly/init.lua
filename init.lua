local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("set")
require("remaps")

require("lazy").setup("plugins")

-- require("plugin")
-- -- import plugin configs
-- require("plugins.brackets")
-- require("plugins.colorscheme")
-- require("plugins.comments")
-- require("plugins.dap")
-- require("plugins.focus")
-- require("plugins.git")
-- require("plugins.harpoon")
-- require("plugins.lsp")
-- require("plugins.mason")
-- require("plugins.oil")
-- require("plugins.snippet")
-- require("plugins.telescope")
-- require("plugins.tex")
-- require("plugins.treesitter")
-- require("plugins.formatter")
