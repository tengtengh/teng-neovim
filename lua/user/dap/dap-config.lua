
local M = {}

local function config_dapi_and_sign()
  local dap_install = require "dap-install"
  dap_install.setup {
    installation_path = vim.fn.stdpath "data" .. "/dapinstall/",
  }

  -- local dap_breakpoint = {
  --   error = {
  --     text = "🛑",
  --     texthl = "LspDiagnosticsSignError",
  --     linehl = "",
  --     numhl = "",
  --   },
  --   rejected = {
  --     text = "",
  --     texthl = "LspDiagnosticsSignHint",
  --     linehl = "",
  --     numhl = "",
  --   },
  --   stopped = {
  --     text = "⭐️",
  --     texthl = "LspDiagnosticsSignInformation",
  --     linehl = "DiagnosticUnderlineInfo",
  --     numhl = "LspDiagnosticsSignInformation",
  --   },
  -- }
  --
  -- vim.fn.sign_define("DapBreakpoint", dap_breakpoint.error)
  -- vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)
  -- vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
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

end

local function config_debuggers()
  local dap = require "dap"
  -- TODO: wait dap-ui for fixing temrinal layout
  -- the "30" of "30vsplit: doesn't work
  -- dap.defaults.fallback.terminal_win_cmd = '30vsplit new' -- this will be overrided by dapui
  dap.set_log_level("DEBUG")

  -- load from json file
  require('dap.ext.vscode').load_launchjs(nil, { cppdbg = {'c', 'cpp'} })
  -- require('dap.ext.vscode').load_launchjs(nil, { cppdbg = { 'cpp' } })
  -- config per launage
  -- require("user.dap.di-cpp")
  -- require("user.dap.di-go")

  require("user.dap.dap-cpp")
  -- require("user.dap.dap-go")
  -- require("user.dap.dap-python")
  -- require("user.dap.dap-lua")
  -- require("user.dap.dap-cpp")
  -- require("config.dap.python").setup()
  -- require("config.dap.rust").setup()
  -- require("config.dap.go").setup()
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
end

return M




-- local dap = require(("dap"))
-- require("dapui").setup()
-- require("nvim-dap-virtual-text").setup()
--
-- vim.keymap.set("n", "<F5>", require("dap").continue)
-- vim.keymap.set("n", "<F7>", require("dap").step_into)
-- vim.keymap.set("n", "<F8>", require("dap").step_over)
-- vim.keymap.set("n", "<S-F8>", require("dap").step_out)
-- vim.keymap.set("n", "<Leader>db", require("dap").toggle_breakpoint)
-- vim.keymap.set("n", "<Leader>dB", function()
--     require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
-- end)
-- vim.keymap.set("n", "<Leader>dr", require "dapui".toggle)
--
--
-- dap.adapters.lldb = {
--   type = 'executable',
--   command = '/usr/bin/lldb-vscode', -- adjust as needed, must be absolute path
--   name = 'lldb'
-- }
--
-- dap.configurations.cpp = {
--   {
--     name = 'Launch',
--     type = 'lldb',
--     request = 'launch',
--     program = function()
--       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--     end,
--     cwd = '${workspaceFolder}',
--     stopOnEntry = false,
--     args = {},
--
--     -- 💀
--     -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
--     --
--     --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
--     --
--     -- Otherwise you might get the following error:
--     --
--     --    Error on launch: Failed to attach to the target process
--     --
--     -- But you should be aware of the implications:
--     -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
--     -- runInTerminal = false,
--   },
-- }
--
-- -- If you want to use this for Rust and C, add something like this:
-- dap.configurations.c = dap.configurations.cpp
-- dap.configurations.rust = dap.configurations.cpp
--
--
--
-- dap.adapters.python = {
--     type = "executable",
--     command = "python",
--     args = { "-m", "debugpy.adapter" },
-- }
--
-- dap.configurations.python = {
--     {
--         type = "python",
--         request = "launch",
--         name = "Launch file",
--         program = "${file}",
--         pythonPath = function()
--             return "/usr/bin/python"
--         end,
--     },
-- }
--


