local status_ok, nvim_lastplace = pcall(require, "nvim-lastplace")
if not status_ok then
  vim.notify("nvim-lastplace not found!")
  return
end

nvim_lastplace.setup({

})


