local dap, dapui = require("dap"), require("dapui")

-- configure some shortcuts to use with dap


dapui.setup({
    -- Set icons to characters that are more likely to work in every terminal.
    --    Feel free to remove or use ones that you like more! :)
    --    Don't feel like these are good choices.
    icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
    controls = {
        icons = {
            disconnect = "⏏",
            pause = "⏸",
            play = "▶",
            step_into = "⏎",
            step_over = "⏭",
            step_out = "⏮",
            step_back = "b",
            run_last = "▶▶",
            terminate = "⏹",
        },
    },
})

-- this enables stepping and starts the debugger
vim.keymap.set('n', '<F5>', function()
    -- vim.api.nvim_command('write') -- automatically save before starting debugger
    require('dap').continue()
end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)

-- this automatically opens and closes the dap-ui, when a debugger session is started
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

-- this configures the adapter for python
dap.adapters.python = {
    type = 'executable',
    command = 'python3.11',
    args = { '-m', 'debugpy.adapter' },
}

-- this is the configuration for python
dap.configurations.python = {
    {
        type = 'python',
        request = 'launch',
        name = "Launch file",
        program = "${file}",
        pythonPath = function()
            return 'python3.11'
        end,
    },
}
