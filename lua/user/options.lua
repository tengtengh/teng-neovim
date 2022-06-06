

-- display line number
vim.o.number = true

-- tab == 4 space
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = 4
vim.o.smartindent = true

-- is necessary
vim.o.termguicolors = true

-- hightlight cur line
vim.o.cursorline = true

-- set nobackup
vim.o.backup = false

-- turn off swapfile
vim.o.swapfile = false

vim.o.encoding = "utf-8"
--中文编码
vim.o.fileencodings = "utf-8, gb2312, gbk, gb18030"

vim.o.ruler = true

--Turn on the mouse function
vim.o.mouse = 'a'

--  忽略大小写
vim.o.ignorecase = true

-- 智能识别大小写，有大写的时候，就不再忽略大小写（这个设置在有了cmdline的自动补全之后意义不大了）
vim.o.smartcase = true

-- vim.o.splitbelow = true
-- vim.o.splitright = true
-- vim.o.cscopequickfix="s-,c-,d-,i-,t-,e-"       -- cscope output to quickfix window


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

-- insert 模式下关闭相对行号，离开insert模式时打开相对行号
-- 参考 William Lin的vim配置, https://github.com/tmwilliamlin168/CP-YouTube/blob/master/.vimrc
vim.cmd([[
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
]])










