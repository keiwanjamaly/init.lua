return {
	'nvim-focus/focus.nvim',
	opts = {},
	-- Optional dependencies
	config = function()
		require("focus").setup({hybridnumber = true})
	end
}
