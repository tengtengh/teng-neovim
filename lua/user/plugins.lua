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

    --  loading vscode snippets
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

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

    -- lsp-signature
    use {
        "ray-x/lsp_signature.nvim",
    }


    -- lsp-format.nvim
    -- use "lukas-reineke/lsp-format.nvim"

    -- highlight undercursor word
    use "RRethy/vim-illuminate"


    -- lsp ui
    -- TODO: 有空配置一下
    -- use { 'kkharji/lspsaga.nvim' }
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
        -- config = function()
        --     local saga = require("lspsaga")

        --     saga.init_lsp_saga({
        --         -- your configuration
        --     })
        -- end,
    })



    -- comment
    use { 'numToStr/Comment.nvim', }


    -- nvim-tree.lua
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        branch = "1831-test-skipping-executable-check", -- 这个版本可以比较Wsl中打开nvim-tree卡住的问题
        -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- welcome page
    use "goolord/alpha-nvim"

    -- 右侧函数名、markdown标题等 文件大纲视图
    use {
        'stevearc/aerial.nvim',
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
   
    -- use 'davidgranstrom/nvim-markdown-preview'
    -- use 'jbyuki/md-prev.nvim'
    use {"ellisonleao/glow.nvim"}

    -- 安装插件(markdown图片粘贴)
    use {
        'tengtengh/md-img-paste.vim',
        branch = "WSL2"
        -- config = function()
        --     require('user.markdown.md-img-paste')
        -- end
    }
    -- 生成markdown目录的插件
    use 'mzlogin/vim-markdown-toc'

    -- use {
    --     'lukas-reineke/headlines.nvim',
    --     config = function()
    --         require('user.markdown.headlines')
    --     end,
    -- }

    use 'dhruvasagar/vim-table-mode'

    -- -- markdown_toc
    -- use {
    --     'Addisonbean/loclist-toc-nvim',
    --     config = function()
    --         require('loclist-toc-nvim').setup{}
    --     end,
    -- }

    -- <<<<<<<<<<<< Markdown <<<<<<<<<<<<

    -- terminal intergration
    use {
        "akinsho/toggleterm.nvim",
        tag = 'v2.*',
    }

    -- notify
    use "rcarriga/nvim-notify"

    -- autopairs
    use 'windwp/nvim-autopairs'

    -- Made neovim syntax highlighting more
    -- use {
    --     'nvim-treesitter/nvim-treesitter',
    --     -- branch = "0.5-compat",
    --     -- tag = "v0.8.0",
    --     run = ':TSUpdate',
    -- }


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
    -- 
    -- -- -- A bunch of colorschemes you can try out
    -- -- use "lunarvim/colorschemes"
    --
    -- colorscheme -- EdenEast/nightfox.nvim
    use "EdenEast/nightfox.nvim"
    -- colorscheme -- vscode.nvim
    use 'Mofiqul/vscode.nvim'
    --  colorscheme   -- blue-moon
    use "kyazdani42/blue-moon"
    -- colorscheme  -- onedarkpro
    use "olimorris/onedarkpro.nvim"
    -- colorscheme -- github-nvim-theme
    use {
        "projekt0n/github-nvim-theme",
    }
    -- colorscheme -- catppuccin
    use({
        "catppuccin/nvim",
        -- tag = 'v0.2.5',
        as = "catppuccin"
    })
    -- colorscheme  -- doom-one
    use 'NTBBloodbath/doom-one.nvim'

    -- colorscheme -- onedark.nvim
    use 'navarasu/onedark.nvim'
    -- tokyonight
    use 'folke/tokyonight.nvim'
    -- colorscheme -- emacs style (light)
    use 'ishan9299/modus-theme-vim'
    -- colorscheme -- onenord
    use 'rmehri01/onenord.nvim'
    -- colorscheme -- monokai styles
    use 'tanvirtin/monokai.nvim'
    use "tengtengh/one_monokai.nvim" -- TODO: 禁用斜体
    -- colorscheme -- dracula
    use 'Mofiqul/dracula.nvim'
    use 'p00f/alabaster.nvim'
    use "rafamadriz/neon"
    use 'marko-cerovac/material.nvim'
    use "tomasiser/vim-code-dark"
    use "lewpoly/sherbet.nvim"
    use({
        'glepnir/zephyr-nvim',
    })
    use 'jacoborus/tender.vim'
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'lycuid/vim-far'
    -- <<<<<<<<<<<<< colorschemes <<<<<<<<<<<<<

    -- telescope
    use "nvim-telescope/telescope.nvim"
    -- -- media file preview extension for telescope
    -- use("nvim-telescope/telescope-media-files.nvim")

    -- A search panel for neovim.
    use "nvim-pack/nvim-spectre"

    -- 打开文件自动回到上次编辑的位置
    use 'ethanholz/nvim-lastplace'

    -- TODO:
    -- HACK:
    -- NOTE:
    -- FIX:
    -- WARNING:
    -- todo-comments
    use {
        "folke/todo-comments.nvim",
        -- requires = "nvim-lua/plenary.nvim",
    }

    use "folke/trouble.nvim"

    -- vim-translate
    -- use 'voldikss/vim-translator'
    use { 'uga-rosa/translate.nvim' }

    use 'ianva/vim-youdao-translater'




end)
