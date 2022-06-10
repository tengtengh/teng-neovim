-- local onedarkpro = require("onedarkpro")

local status_ok, onedarkpro = pcall(require, "onedarkpro")
if not status_ok then
    vim.notify("onedarkpro.nvim theme not found!")
    return
end

onedarkpro.setup({
    styles = {
        comments = "italic",
        -- functions = "NONE",
        -- keywords = "bold,italic",
        -- strings = "NONE",
        -- variables = "NONE",
        -- virtual_text = "NONE"
    },

    -- options = {
    --     transparency = true
    -- }
})
onedarkpro.load()



-- for onedarkpro colorscheme
--[[


onedarkpro.setup({
    -- dark_theme = "onedark", -- The default dark theme
    -- light_theme = "onelight", -- The default light theme
    -- Theme can be overwritten with 'onedark' or 'onelight' as a string
    -- theme = function()
    --     if vim.o.background == "dark" then
    --         return config.dark_theme
    --     else
    --         return config.light_theme
    --     end
    -- end,
    -- colors = {}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
    -- hlgroups = {}, -- Override default highlight groups
    -- filetype_hlgroups = {}, -- Override default highlight groups for specific filetypes
    -- plugins = { -- Override which plugins highlight groups are loaded
    --     native_lsp = true,
    --     polygot = true,
    --     treesitter = true,
    --     -- NOTE: Other plugins have been omitted for brevity
    -- },

    styles = {
        comments = "italic",
        -- functions = "NONE",
        -- keywords = "bold,italic",
        -- strings = "NONE",
        -- variables = "NONE",
        -- virtual_text = "NONE"
    },
    --
    --
    -- options = {
    --     bold = true, -- Use the themes opinionated bold styles?
    --     italic = true, -- Use the themes opinionated italic styles?
    --     underline = true, -- Use the themes opinionated underline styles?
    --     undercurl = true, -- Use the themes opinionated undercurl styles?
    --     cursorline = true, -- Use cursorline highlighting?
    --     transparency = true, -- Use a transparent background?
    --     terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
    --     window_unfocussed_color = true, -- When the window is out of focus, change the normal background?
    -- }
})

--]]

-- onedarkpro.load()
