



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
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
})
-- cmp.setup.cmdline(':', {
--     mapping = cmp.mapping.preset.cmdline(),
--     sources = cmp.config.sources({
--         { name = 'cmdline' }
--     }, {
--         { name = 'path' }
--     })
-- })

-- disable autocompletion for guihua
vim.cmd("autocmd FileType guihua lua require('cmp').setup.buffer { enabled = false }")
vim.cmd("autocmd FileType guihua_rust lua require('cmp').setup.buffer { enabled = false }")

cmp.setup(cmp_config)



