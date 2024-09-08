return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("lspconfig").clangd.setup({})
			require("lspconfig").hls.setup({})
			require("lspconfig").tsserver.setup({})
			require("lspconfig").lua_ls.setup({})
			require("lspconfig").jedi_language_server.setup({})
			require("lspconfig").bashls.setup({})
			require("lspconfig").cmake.setup({})
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
			-- Yes, we're just executing a bunch of Vimscript, but this is the officially
			-- endorsed method; see https://github.com/L3MON4D3/LuaSnip#keymaps
			vim.cmd([[
            " Use Tab to expand and jump through snippets
            imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
            smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

            " Use Shift-Tab to jump backwards through snippets
            imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
            smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
            ]])
			-- require("luasnip.loaders.from_vscode").lazy_load()
			require("luasnip").config.set_config({ -- Setting LuaSnip config

				-- Enable autotriggered snippets
				enable_autosnippets = true,

				-- Use Tab (or some other key if you prefer) to trigger visual selection
				store_selection_keys = "<Tab>",
				update_events = "TextChanged,TextChangedI",
			})
			require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/LuaSnip/" })
			-- reload snippet directory
			vim.keymap.set(
				"n",
				"<Leader>L",
				'<Cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})<CR>'
			)
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
					-- { name = "omni" },
				}),
			})
		end,
	},
}
