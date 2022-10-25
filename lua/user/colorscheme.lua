-- cursor color: #61AFEF
-- local colorscheme = "catppuccin"
-- local colorscheme = "doom-one"
-- local colorscheme = "one_monokai"
-- local colorscheme = "modus-operandi" -- emacs
-- local colorscheme = "onedarker"
-- local colorscheme = "github_light"
-- local colorscheme = "tokyonight"
-- local colorscheme = "onedark"
-- local colorscheme = "desert"
local colorscheme = "default"
-- local colorscheme = "vscode"
-- local colorscheme = "torte"
-- local colorscheme = "ron"

-- local colorscheme = "onedarkpro"

-- 这个主题有点不太一样，得单独写，否则自定义的config不生效
-- require "user.themes.onedarkpro"


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end

if colorscheme == "github_light" then
    require "user.themes.github-nvim-theme"
elseif colorscheme == "tokyonight" then
    require "user.themes.tokyonight"
elseif colorscheme == "onedark" then
    require "user.themes.onedark"
elseif colorscheme == "catppuccin" then
    require "user.themes.catppuccin"
elseif colorscheme == "doom-one" then
    require "user.themes.doom-one"
end




