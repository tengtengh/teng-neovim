-- vim.cmd([[packadd nvim-lsp-installer]])


local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    vim.notify("nvim-lsp-installer not found!")
    return
end

-- local lsp_installer = require("nvim-lsp-installer")


lsp_installer.setup({})

local nvim_lsp = require("lspconfig")


require("user.lsp.handlers").setup()



--[[
-- local servers = { "pyright", "clangd", "sumneko_lua"}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup({
        on_attach = on_attach,
        capabilities = capabilities,
    })
end
--]]


local prettier = {
    formatCommand = [[prettier --stdin-filepath ${INPUT} ${--tab-width:tab_width}]],
    formatStdin = true,
}



-- local servers = { "pyright", "ccls"}
local servers = lsp_installer.get_installed_servers()
-- table.insert(servers, "ccls")
-- for _, server in ipairs(lsp_installer.get_installed_servers()) do
for _, server in ipairs(servers) do
    local server_opts = {
        on_attach = require("user.lsp.handlers").on_attach,
        capabilities = require("user.lsp.handlers").capabilities,
        flags = {
            -- This will be the default in neovim 0.7+
            debounce_text_changes = 150,
        }
    }
    if server.name == "sumneko_lua" then
        local sumneko_lua_opts = require("user.lsp.settings.sumneko_lua")
        server_opts = vim.tbl_deep_extend("force", sumneko_lua_opts, server_opts)

    elseif server.name == "ccls" then
        local ccls_opts = require("user.lsp.settings.ccls")
        server_opts = vim.tbl_deep_extend("force", ccls_opts, server_opts)

    elseif server.name == "clangd" then
        local clangd_opts = require("user.lsp.settings.clangd")
        server_opts = vim.tbl_deep_extend("force", clangd_opts, server_opts)

    end

    nvim_lsp[server.name].setup(server_opts)

end



