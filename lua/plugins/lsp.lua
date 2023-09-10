local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    lsp.buffer_autoformat()
    local opts = { buffer = bufnr }

    -- format document
    vim.keymap.set({ "n", "x" }, "gq", function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end, opts)
end)

-- require("neodev").setup({
--     -- add any options here, or leave empty to use the default settings
-- })

-- then setup your lsp server as usual
local lspconfig = require("lspconfig")

-- example to setup lua_ls and enable call snippets
lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            completion = {
                callSnippet = "Replace",
            },
        },
    },
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

local cmp_mappings = {
    -- `Enter` key to confirm completion
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),

    -- Navigate between snippet placeholder
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
}

cmp.setup({
    mapping = cmp_mappings,
    sources = cmp.config.sources {
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
        { name = "omni", },
    },
})

lsp.setup()

-- local null_ls = require("null-ls")
--
-- null_ls.setup({
--     sources = {
--         -- Replace these with the tools you have installed
--         -- null_ls.builtins.formatting.prettier,
--         -- null_ls.builtins.diagnostics.eslint,
--         -- null_ls.builtins.formatting.stylua,
--         null_ls.builtins.formatting.htmlbeautifier,
--     },
-- })

-- require 'lspconfig'.texlab.setup {}
require 'lspconfig'.clangd.setup {}
require 'lspconfig'.hls.setup {}
