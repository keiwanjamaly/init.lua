return {
	"stevearc/oil.nvim",
	opts = {},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			columns = {},
			skip_confirm_for_simple_edits = true,
			delete_to_trash = true,
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
				natural_order = true,
				is_always_hidden = function(name, _)
					return name == ".." or name == ".git" or name == ".DS_Store"
				end,
			},
		})

		vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
	end,
}
