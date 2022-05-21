-- plugins

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    -- auto completion
    use({
        "hrsh7th/nvim-cmp",
        config = function()
            require("user.cmp")
        end,
        requires = {
            { "hrsh7th/cmp-path" },       
            { "hrsh7th/cmp-buffer" },       -- Autocompletion plugin
            { "hrsh7th/cmp-nvim-lsp" },     -- LSP source for nvim-cmp
            -- snippet support
            { "L3MON4D3/LuaSnip" },         -- Snippets plugin
            { "saadparwaiz1/cmp_luasnip" }  -- snippets source for nvim-cmp
        },
    })

    -- lsp support
    use {
        "williamboman/nvim-lsp-installer",
        {
            "neovim/nvim-lspconfig",
            config = function()
                require("user.nvim-lspconf")
            end
        }
    }
    
    -- comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }


    -- nvim-tree.lua
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function()
            require("user.nvim-tree")
        end,
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- clickable buffer line
    use({
        "akinsho/nvim-bufferline.lua",
        tag = "v2.*",
        config = function()
            require("user.bufferline")
            -- require("bufferline").setup()
        end,
    })

    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function() 
            require("user.statusline")
        end,
    }

    -- autopairs
    use {
        'windwp/nvim-autopairs',
        config = function() 
            require('nvim-autopairs').setup{}
        end,
    }

    -- Made neovim syntax highlighting more
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require("user.treesitter")
        end,
    }



    -- -- statusline
    -- use {
    --     'beauwilliams/statusline.lua',
    --     config = function()
    --         local statusline = require('statusline')
    --         statusline.tabline = false
    --     end
    -- }

   
    -- colorscheme  -- onedarkpro
    use({
        'NTBBloodbath/doom-one.nvim',
        event = "BufEnter",
        config = function()
            require("user.theme")
        end,
    })

    -- -- colorscheme  -- onedarkpro
    -- use({
    --     "olimorris/onedarkpro.nvim",
    --     event = "BufEnter",
    --     config = function()
    --         require("init-theme")
    --     end,
    -- })


    -- fuzzy finder
    use({
        "nvim-telescope/telescope.nvim",
        config = function()
            require("user.telescope")
        end,
    })

end)




