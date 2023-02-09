-- display line number
vim.o.number = true

-- tab == 4 space
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true

-- is necessary
vim.o.termguicolors = true

-- hightlight cur line
-- 2022.10.13 commit
-- vim.o.cursorline = true

-- set nobackup
vim.o.backup = false

-- turn off swapfile
vim.o.swapfile = false

vim.o.encoding = "utf-8"
--中文编码
vim.o.fileencodings = "utf-8, gb2312, gbk, gb18030"




vim.o.mouse = 'a'

--  忽略大小写
vim.o.ignorecase = true

-- 智能识别大小写，有大写的时候，就不再忽略大小写（这个设置在有了cmdline的自动补全之后意义不大了）
vim.o.smartcase = true

-- vim.o.splitbelow = true
-- vim.o.splitright = true
-- vim.o.cscopequickfix="s-,c-,d-,i-,t-,e-"       -- cscope output to quickfix window


vim.g.mapleader = ';'


-- popup menu height 弹出框的最大高度
vim.o.pumheight=10


vim.lsp.set_log_level("ERROR")





-- -- 重新打开文档时光标回到文档关闭前的位置 -- 参考的代码随想录作者的PowerVim
-- vim.cmd([[

-- if has("autocmd")
--  autocmd BufReadPost *
--  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
--  \ exe "normal g'\"" |
-- \ endif
-- endif

-- ]])


-- vim.cmd([[
--     if index(['lua'], &filetype) != -1
--         echo "lua"
--     endif
-- ]])

-- insert 模式下关闭相对行号，离开insert模式时打开相对行号
-- 参考 William Lin的vim配置, https://github.com/tmwilliamlin168/CP-YouTube/blob/master/.vimrc
-- 2022-07-22 by tengh: 对于NvimTree文件类型，永远不显示行号
vim.cmd([[
fun SetNvimTreeNorelativenumber()
    if  index(['NvimTree'], &filetype) != -1
       """ set nornu
    else 
        set rnu
    endif
endfun

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * call SetNvimTreeNorelativenumber()
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
]])



-- 新建 .clang-format 文件的时候，自动写入indentWidth: 4
vim.cmd([[
autocmd BufNewFile .clang-format exec ":call Set_init_clang_format()"
func Set_init_clang_format()
        call setline(1,"# 缩进宽度")
        call append(line("."),   "IndentWidth: 4")
        call append(line(".")+1, "")
        call append(line(".")+2, "#如果为真（true），这条语句：“if(a)return;”将被放在同一行")
        call append(line(".")+3, "AllowShortIfStatementsOnASingleLine: true")
        call append(line(".")+4, "")
        call append(line(".")+5, "#保持连续空行的最大数量")
        call append(line(".")+6, "MaxEmptyLinesToKeep: 3")
        call append(line(".")+7, "")
        " autocmd BufNewFile * normal j
        9
endfunc
]])


vim.cmd([[
autocmd BufNewFile a.cpp exec ":call Set_init_a_cpp()"
func Set_init_a_cpp()
        call setline(1,"/**")
        call append(line("."),    " * Author: Tengh")
        call append(line(".")+1,  " * Created Time: ".strftime("%y.%m.%d %H:%M:%S (%A)"))
        call append(line(".")+2,  "**/")
        call append(line(".")+3,  "")
        call append(line(".")+4,  "#include <bits/stdc++.h>")
        call append(line(".")+5,  "")
        call append(line(".")+6,  "using namespace std;")
        call append(line(".")+7,  "")
        call append(line(".")+8,  "// #include <ext/pb_ds/assoc_container.hpp>")
        call append(line(".")+9,  "// using namespace __gnu_pbds;")
        call append(line(".")+10, "// template <class T> using indexed_set = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;")
        call append(line(".")+11, "// template <class T> using indexed_multiset = tree<T, null_type, less_equal<T>, rb_tree_tag, tree_order_statistics_node_update>;")
        call append(line(".")+12, "")
        call append(line(".")+13, "typedef long long ll;")
        call append(line(".")+14, "#define m_pi 3.14159255358979323846")
        call append(line(".")+15, "// #define endl '\\n'")
        call append(line(".")+16, "")
        call append(line(".")+17, "")
        call append(line(".")+18, "int main(int argc, char **argv) {")
        call append(line(".")+19, "    ios::sync_with_stdio(0); cin.tie(0); cout.tie(0);")
        call append(line(".")+20, "#ifdef LOCAL")
        call append(line(".")+21, "    freopen(\"in1\", \"r\", stdin); freopen(\"output.txt\", \"w\", stdout);")
        call append(line(".")+22, "#endif")
        call append(line(".")+23, "")
        call append(line(".")+24, "")
        call append(line(".")+25, "")
        call append(line(".")+26, "    return 0;")
        call append(line(".")+27, "}")
        call append(line(".")+28, "")
        call append(line(".")+29, "")
        call append(line(".")+30, "")
        call append(line(".")+31, "")
        " autocmd BufNewFile * normal j
        $
        25
endfunc
]])





-- 针对roslaunch使用xml的注释和补全
vim.cmd([[ 
autocmd BufRead,BufNewFile *.launch setfiletype xml
]])


