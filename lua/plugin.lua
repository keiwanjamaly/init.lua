-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- some visuals
    use { "bluz71/vim-moonfly-colors", as = "moonfly" }

    -- for code parsing and highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },           -- Required
            { 'williamboman/mason.nvim' },         -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },   -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },   -- Required
        }
    }

    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }

    -- use { 'neovim/nvim-lspconfig' }

    -- use "folke/neodev.nvim"

    -- for fuzzy finding
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        "nvim-telescope/telescope-frecency.nvim",
        requires = { "kkharji/sqlite.lua" }
    }

    use { 'numToStr/Comment.nvim' } -- enable block comments

    -- for debugging
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }

    -- for automatic closing brackets
    use { "m4xshen/autoclose.nvim" }

    use { "kylechui/nvim-surround" }

    use { "christoomey/vim-tmux-navigator" }

    use { "mg979/vim-visual-multi" }

    use { "stevearc/oil.nvim" }

    -- install latex plugin
    use { "lervag/vimtex" }
    use { 'hrsh7th/cmp-omni' } -- setup for vimlatex

    use { "L3MON4D3/LuaSnip",
        -- requires = "rafamadriz/friendly-snippets",
        -- follow latest release.
        tag = "v<CurrentMajor>.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    }
    use { "rafamadriz/friendly-snippets" }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'nvim-lua/plenary.nvim' }
    use { 'ThePrimeagen/harpoon' }
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }
    use { "beauwilliams/focus.nvim" }

    use { "tpope/vim-repeat" }
    -- use { "ggandor/lightspeed.nvim" }
    use { "wellle/targets.vim" }

    -- use({
    --     "jackMort/ChatGPT.nvim",
    --     config = function()
    --         require("chatgpt").setup()
    --     end,
    --     requires = {
    --         "MunifTanjim/nui.nvim",
    --         "nvim-lua/plenary.nvim",
    --         "nvim-telescope/telescope.nvim"
    --     }
    -- })
end)
