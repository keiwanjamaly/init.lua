-- return {
--    "bluz71/vim-moonfly-colors", name = "moonfly" , config = function()
-- 	vim.cmd [[colorscheme moonfly]]
--   end
-- }
return {
	"rebelot/kanagawa.nvim",
	config = function()
		vim.cmd("colorscheme kanagawa-wave")
		vim.g.personal_color_scheme = "black"
		vim.keymap.set("n", "<leader>c", function()
			if vim.g.personal_color_scheme == "black" then
				vim.cmd("colorscheme kanagawa-lotus")
				vim.g.personal_color_scheme = "not black"
			else
				vim.cmd("colorscheme kanagawa-wave")
				vim.g.personal_color_scheme = "black"
			end
		end, {})
	end,
}
