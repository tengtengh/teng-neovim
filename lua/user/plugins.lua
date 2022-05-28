-- plugins

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- lua functions
    use("nvim-lua/plenary.nvim")

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

    -- 右侧函数名、markdown标题等 文件大纲视图
    use {
        'stevearc/aerial.nvim',
        config = function()
            require('user.aerial')
        end
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

    -- Git
    use {
        "lewis6991/gitsigns.nvim";
        config = function ()
            require("user.gitsigns")
        end
    }

    -- -- statusline
    -- use {
    --     'beauwilliams/statusline.lua',
    --     config = function()
    --         local statusline = require('statusline')
    --         statusline.tabline = false
    --     end
    -- }

    -- vim surround
    use "tpope/vim-surround"

    -- markdown-preview
    use {
        "iamcco/markdown-preview.nvim",
    }
    -- 或者 手动执行 :call mkdp#util#install()
    vim.cmd([[  execute 'call mkdp#util#install()'  ]])

    -- 安装插件(markdown图片粘贴)
    use {
        'ferrine/md-img-paste.vim',
        config = function()
            require('user.markdown.md-img-paste')
        end

    }

    -- 生成markdown目录的插件
    use 'mzlogin/vim-markdown-toc'


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

    ----------colorschemes------------------------------
    --colorscheme   -- blue-moon
    use "kyazdani42/blue-moon"
    -- colorscheme  -- onedarkpro
    use({
        "olimorris/onedarkpro.nvim",
        -- event = "BufEnter",
        -- config = function()
        --     require("user.theme")
        -- end,
    })
    use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
    -- colorscheme -- github-nvim-theme
    use {
        "projekt0n/github-nvim-theme",
        -- tag = "v0.0.4",  -- 敲代码的脱发水哥加了这个，我不能加，否则nvim-treesitter在lua文件报错(一片红)
    }
    -- colorscheme -- catppuccin
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    })
    -- colorscheme  -- doom-one
    use({
        'NTBBloodbath/doom-one.nvim',
        -- event = "BufEnter",
        -- config = function()
        --     require("user.themes.doom-one")
        -- end,
    })


    -- fuzzy finder
    use({
        "nvim-telescope/telescope.nvim",
        -- tag = "nvim-0.8",
        config = function()
            require("user.telescope")
            -- require('telescope').setup{}
        end,
    })

    -- -- media file preview extension for telescope
    -- use("nvim-telescope/telescope-media-files.nvim")





end)




