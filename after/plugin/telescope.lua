local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

local action_layout = require("telescope.actions")
require"telescope".load_extension("frecency")
require("telescope").setup {
    defaults = {
        mappings = {
            n = {
                ["<C-w>s"] = action_layout.file_split,
                ["<C-w>v"] = action_layout.file_vsplit
            },
            i = {
                ["<C-w>s"] = action_layout.file_split,
                ["<C-w>v"] = action_layout.file_vsplit
            },
        },
    }
}
