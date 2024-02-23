return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup({
            toggler = {
                -- for normal mode
                line = '<C-/>',
            },
            opleader = {
                -- for visual mode
                line = '<C-/>',
            },
        })
    end
}
