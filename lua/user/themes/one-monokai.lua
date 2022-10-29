local status_ok, one_monokai = pcall(require, "one_monokai")
if not status_ok then
    vim.notify("one_monokai.nvim theme not found!")
    return
end

one_monokai.setup({
})
