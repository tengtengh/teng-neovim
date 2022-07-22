local status_ok, nvim_spectre = pcall(require, "spectre")
if not status_ok then
    vim.notify("Comment not found")
    return
end


