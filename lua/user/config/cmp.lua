



-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- local lspconfig = require('lspconfig')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
-- local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
-- local servers = { 'clangd' }
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     -- on_attach = my_custom_on_attach,
--     capabilities = capabilities,
--   }
-- end

-- luasnip setup
local luasnip = require 'luasnip'


require("luasnip.loaders.from_vscode").lazy_load() -- load freindly-snippets
require("luasnip.loaders.from_vscode").load({ paths = { -- load custom snippets
  vim.fn.stdpath("config") .. "/my-snippets"
} }) -- Load snippets from my-snippets folder

-- nvim-cmp setup
local cmp = require 'cmp'


cmp_config = {
    confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
    },
    completion = {
        ---@usage The minimum length of a word to complete on.
        keyword_length = 1,
    },
    experimental = {
        ghost_text = false,
        native_menu = false,
    },
    -- formatting = {
    --     fields = { "kind", "abbr", "menu" },
    --     max_width = 0,
    --     kind_icons = {
    --         Class = " ",
    --         Color = " ",
    --         Constant = "ﲀ ",
    --         Constructor = " ",
    --         Enum = "練",
    --         EnumMember = " ",
    --         Event = " ",
    --         Field = " ",
    --         File = "",
    --         Folder = " ",
    --         Function = " ",
    --         Interface = "ﰮ ",
    --         Keyword = " ",
    --         Method = " ",
    --         Module = " ",
    --         Operator = "",
    --         Property = " ",
    --         Reference = " ",
    --         Snippet = " ",
    --         Struct = " ",
    --         Text = " ",
    --         TypeParameter = " ",
    --         Unit = "塞",
    --         Value = " ",
    --         Variable = " ",
    --     },
    --     source_names = {
    --         nvim_lsp = "(LSP)",
    --         treesitter = "(TS)",
    --         emoji = "(Emoji)",
    --         path = "(Path)",
    --         calc = "(Calc)",
    --         cmp_tabnine = "(Tabnine)",
    --         vsnip = "(Snippet)",
    --         luasnip = "(Snippet)",
    --         buffer = "(Buffer)",
    --         spell = "(Spell)",
    --     },
    --     duplicates = {
    --         buffer = 1,
    --         path = 1,
    --         nvim_lsp = 0,
    --         luasnip = 1,
    --     },
    --     duplicates_default = 0,
    --     format = function(entry, vim_item)
    --         local max_width = cmp_config.formatting.max_width
    --         if max_width ~= 0 and #vim_item.abbr > max_width then
    --             vim_item.abbr = string.sub(vim_item.abbr, 1, max_width - 1) .. "…"
    --         end
    --         vim_item.kind = cmp_config.formatting.kind_icons[vim_item.kind]
    --         vim_item.menu = cmp_config.formatting.source_names[entry.source.name]
    --         vim_item.dup = cmp_config.formatting.duplicates[entry.source.name]
    --             or cmp_config.formatting.duplicates_default
    --         return vim_item
    --     end,
    -- },

    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
     window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
        -- completion = {
        --     max_height = 5,
        -- }
    },

    sources = {
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "luasnip" },
        { name = "cmp_tabnine" },
        { name = "nvim_lua" },
        { name = "buffer" },
        { name = "spell" },
        { name = "calc" },
        { name = "emoji" },
        { name = "treesitter" },
        { name = "crates" },
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),



}
-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

cmp.setup.cmdline('?', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'cmdline' }
    }, {
        { name = 'path' }
    })
})

-- disable autocompletion for guihua
vim.cmd("autocmd FileType guihua lua require('cmp').setup.buffer { enabled = false }")
vim.cmd("autocmd FileType guihua_rust lua require('cmp').setup.buffer { enabled = false }")

cmp.setup(cmp_config)




--[[
local kind_icons = {
    Class = " ",
    Color = " ",
    Constant = "ﲀ ",
    Constructor = " ",
    Enum = "練",
    EnumMember = " ",
    Event = " ",
    Field = " ",
    File = "",
    Folder = " ",
    Function = " ",
    Interface = "ﰮ ",
    Keyword = " ",
    Method = " ",
    Module = " ",
    Operator = "",
    Property = " ",
    Reference = " ",
    Snippet = " ",
    Struct = " ",
    Text = " ",
    TypeParameter = " ",
    Unit = "塞",
    Value = " ",
    Variable = " ",
}

cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
            -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
            vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
            vim_item.menu = ({
                nvim_lsp = "(LSP)",
                -- treesitter = "(TS)",
                -- emoji = "(Emoji)",
                path = "(Path)",
                -- calc = "(Calc)",
                cmp_tabnine = "(Tabnine)",
                -- vsnip = "(Snippet)",
                luasnip = "(Snippet)",
                buffer = "(Buffer)",
                -- spell = "(Spell)",
            })[entry.source.name]
            return vim_item
        end
    },

    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'cmp_tabnine' },
        -- {
        --     name = "buffer",
        --     option = {
        --         get_bufnrs = function()
        --             return vim.api.nvim_list_bufs()
        --         end
        --     }
        -- },
        { name = 'buffer' },
        { name = 'path' },
    },
    flags = {
        debounce_text_changes = 150,
    },
    confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    experimental = {
        ghost_text = false;
        native_menu = false,
    }
}
--]]
