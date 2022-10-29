local status_ok, translate = pcall(require, "translate")
if not status_ok then
  vim.notify("telescope not found!")
  return
end



translate.setup({
    -- default = {
    --     command = "translate_shell",
    -- },
    preset = {
        output = {
            split = {
                append = true,
            },
        },
    },
})
