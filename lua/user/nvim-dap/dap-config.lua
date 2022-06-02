

local M = {}

local function config_dapi_and_sign()
    local dap_install = require "dap-install"
    dap_install.setup {
        installation_path = vim.fn.stdpath "data" .. "/dapinstall/",
    }

    local dap_breakpoint = {
        error = {
            -- text = "🛑",
            text = "🔴",
            texthl = "LspDiagnosticsSignError",
            linehl = "",
            numhl = "",
        },
        rejected = {
            text = "",
            texthl = "LspDiagnosticsSignHint",
            linehl = "",
            numhl = "",
        },
        stopped = {
            text = "⭐️",
            texthl = "LspDiagnosticsSignInformation",
            linehl = "DiagnosticUnderlineInfo",
            numhl = "LspDiagnosticsSignInformation",
        },
    }

    vim.fn.sign_define("DapBreakpoint", dap_breakpoint.error)
    vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)
    vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
end

local function config_dapui()

    local dap, dapui = require("dap"), require("dapui")
    dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
    end
    dap.listeners.before.disconnect["dapui_config"] = function()
        dapui.close()
    end

end

local function config_debuggers()
    local dap = require "dap"
    -- TODO: wait dap-ui for fixing temrinal layout
    -- the "30" of "30vsplit: doesn't work
    -- dap.defaults.fallback.terminal_win_cmd = '30vsplit new' -- this will be overrided by dapui
    dap.set_log_level("DEBUG")

    -- load from json file
    -- require('dap.ext.vscode').load_launchjs()
    -- require('dap.ext.vscode').load_launchjs(nil, { cppdbg = { 'cpp' } })
    -- config per launage
    require("user.nvim-dap.di-cpp")
    -- require("user.nvim-dap.dap-cpp")
    -- require("user.dap.di-go")

    -- require("user.dap.dap-go")
    -- require("user.dap.dap-python")
    -- require("user.dap.dap-lua")
    -- require("user.dap.dap-cpp")
    -- require("config.dap.python").setup()
    -- require("config.dap.rust").setup()
    -- require("config.dap.go").setup()


    --得写在下面，写在上面不行，我也不知道为什么
    require('dap.ext.vscode').load_launchjs(nil, { cppdbg = { 'cpp' } })
end

-- local function dap_keymap()
--
--     vim.keymap.set("n", "<F5>", require("dap").continue)
--     vim.keymap.set("n", "<F7>", require("dap").step_into)
--     vim.keymap.set("n", "<F8>", require("dap").step_over)
--     vim.keymap.set("n", "<S-F8>", require("dap").step_out)
--     vim.keymap.set("n", "<Leader>db", require("dap").toggle_breakpoint)
--     vim.keymap.set("n", "<Leader>dB", function()
--         require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
--     end)
--     vim.keymap.set("n", "<Leader>dr", require "dapui".toggle)
--
--
-- end

function M.setup()
    config_dapi_and_sign()
    config_dapui()
    config_debuggers() -- Debugger
    -- dap_keymap()
    -- config_dapi_and_sign()
end

return M




