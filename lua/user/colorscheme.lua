-- cursor color: #61AFEF
-- local colorscheme = "catppuccin"
-- local colorscheme = "nightfox"
-- local colorscheme = "doom-one"
-- local colorscheme = "one_monokai"
-- local colorscheme = "material"
-- local colorscheme = "modus-operandi" -- emacs
-- local colorscheme = "onedarker"
-- local colorscheme = "onedark"
-- local colorscheme = "nvcode"
-- local colorscheme = "github_light"
-- local colorscheme = "tokyonight"
-- local colorscheme = "onedarkpro"
-- local colorscheme = "desert"
-- local colorscheme = "default"
-- local colorscheme = "vscode"
-- local colorscheme = "torte"
-- local colorscheme = "ron"
-- local colorscheme = "slate"
-- local colorscheme = "dracula"
-- local colorscheme = "codedark"

-- local colorscheme = "onedarkpro"

-- 这个主题有点不太一样，得单独写，否则自定义的config不生效
-- require "user.themes.onedarkpro"


local colorscheme


local is_wsl = (function()
  local output = vim.fn.systemlist "uname -r"
  return not not string.find(output[1] or "", "WSL")
end)()

local is_mac = vim.fn.has("macunix") == 1

local is_linux = not is_wsl and not is_mac

-- if is_wsl then
--     colorscheme = "doom-one"
-- else
--     colorscheme = "codedark"
-- end

colorscheme = "codedark"




local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!!")
    return
end

if colorscheme == "github_light" then
    require "user.themes.github_light-nvim-theme"
elseif colorscheme == "tokyonight" then
    require "user.themes.tokyonight"
-- elseif colorscheme == "onedark" then
--     require "user.themes.onedark"
elseif colorscheme == "catppuccin" then
    require "user.themes.catppuccin"
-- elseif colorscheme == "doom-one" then
--     require "user.themes.doom-one"
elseif colorscheme == "one_monokai" then
    require "user.themes.one-monokai"
end




