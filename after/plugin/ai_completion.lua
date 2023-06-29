require('tabnine').setup({
    disable_auto_comment = true,
    accept_keymap = "<C-y>",
    debounce_ms = 800,
    suggestion_color = { gui = "#808080", cterm = 244 },
    exclude_filetypes = { "TelescopePrompt" },
    log_file_path = nil, -- absolute path to Tabnine log file
})
-- vim.cmd('imap <silent><script><expr> <C-y> copilot#Accept(\"<CR>\")')
-- vim.cmd('let g:copilot_no_tab_map = v:true')
