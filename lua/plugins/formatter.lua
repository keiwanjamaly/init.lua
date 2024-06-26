return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup({
			-- Enable or disable logging
			logging = true,
			-- Set the log level
			log_level = vim.log.levels.WARN,
			-- All formatter configurations are opt-in
			filetype = {
				-- Formatter configurations for filetype "lua" go here
				-- and will be executed in order
				lua = {
					require("formatter.filetypes.lua").stylua,
				},

				cpp = {
					require("formatter.filetypes.cpp").clangformat,
				},

				cmake = {
					require("formatter.filetypes.cmake").cmakeformat,
				},

				sh = {
					require("formatter.filetypes.sh").shfmt,
				},

				-- Use the special "*" filetype for defining formatter configurations on
				-- any filetype
				["*"] = {
					-- "formatter.filetypes.any" defines default configurations for any
					-- filetype
					require("formatter.filetypes.any").remove_trailing_whitespace,
				},
			},
		})

		vim.api.nvim_create_autocmd({ "BufWritePost" }, { command = "FormatWriteLock" })
	end,
}
