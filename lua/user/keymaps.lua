
local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }



vim.g.mapleader = ';'

local keymap = vim.api.nvim_set_keymap

-- Modes --
--   normal_mode = "n";
--   insert_mode = "i";
--   visual_mode = "v";
--   visual_block_mode = "x";
--   term_mode = "t;
--   command_mode = "c";

-- Normal --
-- -- <ESC>--
-- keymap("i", "jk", "<ESC>", {})

-- save(w), quit(q, q!), Ctrl+z, :e
keymap("n", "<leader>w", ":w<CR>", {noremap = true})
keymap("n", "<leader>q", ":q<CR>", {noremap = true})
keymap("n", "<leader>q1", ":q!<CR>", {noremap = true})
keymap("n", "<leader>z", "<C-z>", opts)
keymap("n", "<leader>e", ":e ", {noremap = true})

keymap("n", "<leader>v", ":Vex<CR>", opts)
keymap("n", "<leader>s", ":Sex<CR>", opts)
-- keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>h", "<C-w>h", {noremap = true})
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", {noremap = true})

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)


-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Copy and paste to system clipboard
vim.cmd([[noremap <leader>y "+y]])
vim.cmd([[noremap <leader>p "+p]])

--Debugger
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
-- keymap("n", "<leader>dr", "lua require'dap'.repl.open()<cr>", opts)
keymap("n", "<leader>dl", "lua require'dap'.run_last()<cr>", opts)
keymap('n', '<F10>', '<cmd>lua require"user.dap.dap-util".reload_continue()<CR>', opts)
keymap("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>", opts)
keymap("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<F6>", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "K", "<cmd>lua require'dapui'.eval()<cr>", opts)
keymap("n", "dr", "<cmd>lua require 'dapui'.toggle()<cr>", opts)




