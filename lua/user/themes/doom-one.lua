
-- for doom-one colorscheme


local status_ok, doom_one = pcall(require, "doom-one")
if not status_ok then
  vim.notify("doom-one theme not found!")
  return
end


doom_one.setup({

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






