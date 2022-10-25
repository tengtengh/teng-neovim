local status_ok, lsp_format = pcall(require, "lsp-format")
if not status_ok then
    vim.notify("lsp-format not found!")
    return
end

lsp_format.setup {
    typescript = { tab_width = 4 },
    yaml = { tab_width = 2 },
    cpp = { tab_width = 4 },
}
