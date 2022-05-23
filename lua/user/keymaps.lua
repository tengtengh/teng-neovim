
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
-- save(w), quit(q, q!), Ctrl+z, :e
keymap("n", "<leader>w", ":w<CR>", {noremap = true})
keymap("n", "<leader>q", ":q<CR>", {noremap = true})
keymap("n", "<leader>q1", ":q!<CR>", {noremap = true})
keymap("n", "<leader>z", "<C-z>", opts)
keymap("n", "<leader>e", ":e ", {noremap = true})

keymap("n", "<leader>v", ":Vex<CR>", opts)
keymap("n", "<leader>s", ":Sex<CR>", opts)
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

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







