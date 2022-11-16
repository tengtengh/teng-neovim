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
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
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
    use {
        'nvim-treesitter/nvim-treesitter',
        -- branch = "0.5-compat",
        run = ':TSUpdate',
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
    use "olimorris/onedarkpro.nvim"
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
    -- -- nvim-juliana(only dark)
    -- use 'kaiuri/nvim-juliana' -- 报错，不能用
    -- use 'GustavoPrietoP/doom-themes.nvim'
    -- colorscheme -- monokai styles
    use 'tanvirtin/monokai.nvim'
    use "tengtengh/one_monokai.nvim" -- TODO: 禁用斜体
    -- use "NNNiv/monokai-palenight.nvim"
    -- use 'ray-x/starry.nvim'
    -- colorscheme -- dracula
    use 'Mofiqul/dracula.nvim'
    use 'p00f/alabaster.nvim'
    -- use 'JaMo42/alabaster.vim'
    -- use 'stephencottontail/alabaster.vim'
    use "rafamadriz/neon"
    -- use 'marko-cerovac/material.nvim'
    use "tomasiser/vim-code-dark"
    -- use "christianchiarulli/nvcode-color-schemes.vim"
    use "lewpoly/sherbet.nvim"
    use({
        'glepnir/zephyr-nvim',
        requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
    })
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
