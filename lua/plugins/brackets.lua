return {
	{
		"m4xshen/autoclose.nvim",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	{
		"kylechui/nvim-surround",
		config = function()
			require("autoclose").setup()
		end,
	},
}
