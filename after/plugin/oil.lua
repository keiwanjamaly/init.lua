require("oil").setup({
    use_default_keymaps = false,
    keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<C-w>V"] = "actions.select_vsplit",
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
})

vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
