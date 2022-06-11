-- plugins

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Speed up loading Lua modules
    use "lewis6991/impatient.nvim"

    -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/popup.nvim"

    -- lua functions
    use("nvim-lua/plenary.nvim")

    -- auto completion
    use({
        "hrsh7th/nvim-cmp",
        -- config = function()
        --     require("user.config.cmp")
        -- end,
        requires = {
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-buffer" }, -- Autocompletion plugin
            { "hrsh7th/cmp-nvim-lsp" }, -- LSP source for nvim-cmp
            -- snippet support
            { "L3MON4D3/LuaSnip" }, -- Snippets plugin
            { "saadparwaiz1/cmp_luasnip" }, -- snippets source for nvim-cmp
            { "hrsh7th/cmp-cmdline" },
        },
    })

    -- lsp support
    use {
        "williamboman/nvim-lsp-installer",
        {
            "neovim/nvim-lspconfig",
            -- config = function()
            --     require("user.config.nvim-lspconf")
            -- end
        }
    }

    -- lsp-format.nvim
    -- use "lukas-reineke/lsp-format.nvim"

    -- highlight undercursor word
    use "RRethy/vim-illuminate"

    -- comment
    use {
        'numToStr/Comment.nvim',
        -- config = function()
        --     require('Comment').setup()
        -- end
    }


    -- nvim-tree.lua
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        -- config = function()
        --     require("user.config.nvim-tree")
        -- end,
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- welcome page
    use "goolord/alpha-nvim"

    -- 右侧函数名、markdown标题等 文件大纲视图
    use {
        'stevearc/aerial.nvim',
        -- config = function()
        --     require('user.config.aerial')
        -- end
    }

    -- clickable buffer line
    use({
        "akinsho/nvim-bufferline.lua",
        tag = "v2.*",
    })

    -- Git
    use { "lewis6991/gitsigns.nvim"; }

    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    }

    -- vim surround
    use "tpope/vim-surround"

    -- >>>>>>>>>>> Markdown >>>>>>>>>>>>
    -- markdown-preview
    use {
        "iamcco/markdown-preview.nvim",
        run = ":call mkdp#util#install()",
    }
    -- 或者 手动执行 :call mkdp#util#install()
    -- vim.cmd([[  execute 'call mkdp#util#install()'  ]])
    -- 安装插件(markdown图片粘贴)
    use {
        'ferrine/md-img-paste.vim',
        config = function()
            require('user.markdown.md-img-paste')
        end
    }
    -- 生成markdown目录的插件
    use 'mzlogin/vim-markdown-toc'

    -- use {
    --     'lukas-reineke/headlines.nvim',
    --     config = function()
    --         require('user.markdown.headlines')
    --     end,
    -- }
    -- <<<<<<<<<<<< Markdown <<<<<<<<<<<<

    -- terminal intergration
    use {
        "akinsho/toggleterm.nvim",
        tag = 'v1.*',
    }

    -- notify
    use "rcarriga/nvim-notify"

    -- autopairs
    use {
        'windwp/nvim-autopairs',
    }

    -- Made neovim syntax highlighting more
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        -- config = function()
        --     require("user.config.treesitter")
        -- end,
    }


    -- Debugger
    use 'ravenxrz/dapinstall.nvim'
    use 'theHamsta/nvim-dap-virtual-text'
    use {
        "rcarriga/nvim-dap-ui",
        -- tag = "v0.34.0",
    }
    use "mfussenegger/nvim-dap"

    -- indent blankline
    use "lukas-reineke/indent-blankline.nvim"

    -- >>>>>>>>>>>>> colorschemes >>>>>>>>>>>>>
    -- colorscheme -- EdenEast/nightfox.nvim
    use "EdenEast/nightfox.nvim"
    -- colorscheme -- vscode.nvim
    use 'Mofiqul/vscode.nvim'
    --  colorscheme   -- blue-moon
    use "kyazdani42/blue-moon"
    -- colorscheme  -- onedarkpro
    use {
        "olimorris/onedarkpro.nvim",

        -- -- event = "BufEnter",
        -- config = function()
        --     require "user.themes.onedarkpro"
        -- end,
    }
    -- -- A bunch of colorschemes you can try out
    -- use "lunarvim/colorschemes"
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
    use 'NTBBloodbath/doom-one.nvim'
    -- colorscheme -- onedark.nvim
    use 'navarasu/onedark.nvim'
    --tokyonight
    use 'folke/tokyonight.nvim'
    -- <<<<<<<<<<<<< colorschemes <<<<<<<<<<<<<

    -- telescope
    use "nvim-telescope/telescope.nvim"
    -- -- media file preview extension for telescope
    -- use("nvim-telescope/telescope-media-files.nvim")





end)
