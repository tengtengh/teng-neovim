


-- cursor color: #61AFEF
-- local colorscheme = "catppuccin"
-- local colorscheme = "doom-one"
local colorscheme = "onedarker"
-- local colorscheme = "onedarkpro"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  -- return
end

if colorscheme == "github-nvim-theme" then
  require "user.themes.github-nvim-theme"
elseif colorscheme == "catppuccin" then
  require "user.themes.catppuccin"
elseif colorscheme == "onedarkpro" then
  require "user.themes.onedarkpro"
elseif colorscheme == "doom-one" then
  require "user.themes.doom-one"
end






