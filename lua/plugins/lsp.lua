return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("lspconfig").clangd.setup({})
			require("lspconfig").hls.setup({})
			require("lspconfig").tsserver.setup({})
			require("lspconfig").lua_ls.setup({})
			require("lspconfig").jedi_language_server.setup({})
			-- require("lspconfig").ast_grep.setup({})
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
	"saadparwaiz1/cmp_luasnip",
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-omni",
		},
		config = function()
			local cmp = require("cmp")

			local cmp_mappings = {
				-- `Enter` key to confirm completion
				["<Tab>"] = cmp.mapping.confirm({ select = true }),

				-- Navigate between snippet placeholder
				["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
			}
			cmp.setup({
				-- snippet = {
				-- 	expand = function(args)
				-- 		require("luasnip").lsp_expand(args.body)
				-- 	end,
				-- },
				mapping = cmp_mappings,
				sources = cmp.config.sources({
					{ name = "luasnip" },
					{ name = "nvim_lsp" },
					{ name = "omni" },
				}),
			})
		end,
	},
}
