return {
	enabled = false,
	"iurimateus/luasnip-latex-snippets.nvim",
	opts = {},
	-- Optional dependencies
	dependencies = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
	config = function()
		require("luasnip-latex-snippets").setup()
		-- or setup({ use_treesitter = true })
	end,
}
