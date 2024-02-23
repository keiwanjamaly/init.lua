return {
	'stevearc/oil.nvim',
	opts = {},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" }, 
	config = function()
		require("oil").setup({
            columns = {},
			use_default_keymaps = false,
			keymaps = {
				["g?"] = false, --"actions.show_help",
				["<CR>"] = "actions.select",
				["<C-w>V"] = false, -- "actions.select_vsplit",
				["<C-w>S"] = "actions.select_split",
				["<C-h>"] = false,
				["<C-j>"] = false,
				-- ["<C-t>"] = "actions.select_tab",
				-- ["<C-p>"] = "actions.preview",
				-- ["<C-c>"] = "actions.close",
				["<C-r>"] = "actions.refresh",
				["-"] = "actions.parent",
				-- ["_"] = "actions.open_cwd",
				-- ["`"] = "actions.cd",
				-- ["~"] = "actions.tcd",
				-- ["g."] = "actions.toggle_hidden",
			},
			view_options = {
				-- Show files and directories that start with "."
				show_hidden = true,
			},
		})

		vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
	end
}
