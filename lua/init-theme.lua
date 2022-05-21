
--[[
local onedarkpro = require("onedarkpro")
onedarkpro.setup({
    options = {
        transparency = true
    }
})
onedarkpro.load()



--]]



local doomone_colorscheme = require("doom-one")

doomone_colorscheme.setup({

        cursor_coloring = false,
        terminal_colors = false,
        italic_comments = false,
        enable_treesitter = true,
        transparent_background = false,
        pumblend = {
            enable = true,
            transparency_amount = 20,
        },
        plugins_integrations = {
            neorg = true,
            barbar = true,
            bufferline = false,
            gitgutter = false,
            gitsigns = true,
            telescope = false,
            neogit = true,
            nvim_tree = true,
            dashboard = true,
            startify = true,
            whichkey = true,
            indent_blankline = true,
            vim_illuminate = true,
            lspsaga = false,
        },
})

-- doomone_coloscheme.load()






