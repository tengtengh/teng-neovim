local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
    vim.notify("catppuccin colorscheme .. not found!!")
    return
end

catppuccin.setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
    transparent_background = false,
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    styles = {
        comments = { "italic" },
        -- conditionals = { "NONE" },
        -- loops = { "NONE" },
        -- functions = { "NONE" },
        -- keywords = { "NONE" },
        -- strings = { "NONE" },
        -- variables = { "NONE" },
        -- numbers = { "NONE" },
        -- booleans = { "NONE" },
        -- properties = { "NONE" },
        -- types = { "NONE" },
        -- operators = { "NONE" },
    },
    -- color_overrides = {},
    -- custom_highlights = {},
    -- integrations = {
    --     cmp = true,
    --     gitsigns = true,
    --     nvimtree = true,
    --     telescope = true,
    --     treesitter = true,
    --     -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    -- },
})
