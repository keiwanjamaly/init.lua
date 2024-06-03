return {
	-- {
	-- 	"m4xshen/autoclose.nvim",
	-- 	config = function()
	-- 		require("autoclose").setup()
	-- 	end,
	-- },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
}
