return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- ensure_installed = {
				-- 	"bash-language-server",
				-- 	"clang-format",
				-- 	"cmake-language-server",
				-- 	"haskell-language-server",
				-- 	"jedi-language-server",
				-- 	"lua-language-server",
				-- 	"stylua",
				-- },
			})
		end,
	},
}
