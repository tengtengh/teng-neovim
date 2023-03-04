local status_ok, lsp_signature = pcall(require, "lsp_signature")
if not status_ok then
    vim.notify("lsp_signature not found!")
    return
end

lsp_signature.setup({
    -- close_timeout = 4000,
    hint_enable = false,
    -- floating_window_above_cur_line = false, -- 尽可能将浮动放在当前行上方注意：
                                           -- 完全测试时将设置为 true，设置为 false 将使用有更多空间的一侧
                                           -- 如果您不希望 PUM 和浮动获胜重叠，此设置将很有帮助
                                           -- default: true
})
