
-- for onedarkpro colorscheme

local status_ok, onedarkpro = pcall(require, "onedarkpro")
if not status_ok then
  vim.notify("onedarkpro theme not found!")
  return
end

onedarkpro.setup({
    options = {
        transparency = true
    }
})
onedarkpro.load()






