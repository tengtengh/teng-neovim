local status_ok, Comment = pcall(require, "Comment")
if not status_ok then
    vim.notify("Comment not found")
    return
end

Comment.setup({

    sticky = false,


    ---注释/取消注释时要忽略的行。
    ---可以是正则表达式字符串或返回正则表达式字符串的函数。
    --- 示例：使用 '^$' 忽略空行
    ignore = '^$',
})
