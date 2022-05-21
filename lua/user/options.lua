
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = 4
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.backup = false
vim.o.swapfile = false
vim.o.encoding = "utf-8"
vim.o.fileencodings = "utf-8, gb2312, gbk, gb18030"
vim.o.ruler = true
vim.o.mouse = 'a' --Turn on the mouse function
vim.o.ignorecase = true
vim.o.smartcase = true

vim.g.mapleader = ';'


-- 重新打开文档时光标回到文档关闭前的位置 -- 参考的代码随想录作者的PowerVim
vim.cmd([[

if has("autocmd")
 autocmd BufReadPost *
 \ if line("'\"") > 0 && line ("'\"") <= line("$") |
 \ exe "normal g'\"" |
\ endif
endif

]])












