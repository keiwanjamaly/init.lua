return {
	"robitx/gp.nvim",
	config = function()
		local conf = {
			providers = {
				openai = {
					disable = false,
					endpoint = "https://api.openai.com/v1/chat/completions",
					secret = "",
				},
				anthropic = {
					disable = false,
					endpoint = "https://api.anthropic.com/v1/messages",
					secret = { "op", "read", "op://personal/Anthropic-API-Key/credential", "--no-newline" },
				},
			},
		}
		require("gp").setup(conf)

		-- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
		vim.keymap.set({ "n" }, "<CR>", "<cmd>GpChatRespond<cr>")
	end,
}
