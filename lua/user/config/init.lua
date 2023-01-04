
local is_wsl = (function()
  local output = vim.fn.systemlist "uname -r"
  return not not string.find(output[1] or "", "WSL")
end)()

local is_mac = vim.fn.has("macunix") == 1

local is_linux = not is_wsl and not is_mac


require("user.config.impatient")
require("user.config.cmp")
require('user.config.Comment')
require("user.config.nvim-tree")
require("user.config.alpha-nvim")
require('user.config.aerial')
require("user.config.bufferline")
require("user.config.gitsigns")
require("user.config.lualine")
require("user.config.toggleterm")
require("user.config.nvim-notify")
require("user.config.nvim-autopairs")

if is_wsl then
else
    require("user.config.treesitter")
end


require("user.config.indent-blankline")
require("user.config.telescope")
require("user.config.nvim-spectre")
require("user.config.nvim-lastplace")
require("user.config.todo-comments")
require("user.config.trouble")
require("user.config.vim-translator")
require("user.config.vim-youdao-translater")
require("user.config.translate")
