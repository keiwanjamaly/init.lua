return {
    url = "https://codeberg.org/andyg/leap.nvim",
	config = function()
		-- redefine forward and backward moving commands
		vim.keymap.set({ "n" }, "f", "<Plug>(leap-forward)")
		vim.keymap.set({ "n" }, "F", "<Plug>(leap-backward)")
		vim.keymap.set({ "n" }, "t", "<Plug>(leap-forward-to)")
		vim.keymap.set({ "n" }, "T", "<Plug>(leap-backward-to)")
	end,
}
