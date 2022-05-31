local dap = require('dap')

local dbg_path = require("dap-install.config.settings").options["installation_path"] .. "ccppr_vsc/"
dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = "executable",
    command = dbg_path .. "extension/debugAdapters/bin/OpenDebugAD7",
}

dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        -- UP主敲代码的脱发水加的
        -- args = function()
        --     local input = vim.fn.input("Input args: ")
        --     return require("user.dap.dap-util").str2argtable(input)
        -- end,

        cwd = '${workspaceFolder}',
        stopOnEntry = true,
        setupCommands = {
            {
                description = 'enable pretty printing',
                text = '-enable-pretty-printing',
                ignoreFailures = false
            },
        },
    },
    {
        name = 'Attach to gdbserver :1234',
        type = 'cppdbg',
        request = 'launch',
        MIMode = 'gdb',
        miDebuggerServerAddress = 'localhost:1234',
        miDebuggerPath = '/usr/bin/gdb',
        cwd = '${workspaceFolder}',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
    },
}
dap.configurations.c = dap.configurations.cpp
