

-- 从剪切板插入markdown 图片的插件,ferrine/md-img-paste.vim
-- 命令为 :call midp#MarkdownClipboardImage()

-- 设置默认储存文件夹。这里表示储存在当前文档所在文件夹下的'pic'文件夹下，相当于 ./pic/
vim.g.mdip_imgdir = 'image'
-- "设置默认图片名称。当图片名称没有给出时，使用默认图片名称
vim.g.mdip_imgname = 'image'

-- "设置#MarkdownClipboardImage
-- " autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>F%i


