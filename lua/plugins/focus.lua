return {
	"nvim-focus/focus.nvim",
	opts = {},
	-- Optional dependencies
	config = function()
		require("focus").setup({
			ui = {
				hybridnumber = true,
			},
		})
	end,
}
