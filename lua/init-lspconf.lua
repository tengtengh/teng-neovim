

-- vim.cmd([[packadd nvim-lsp-installer]])


local lsp_installer = require("nvim-lsp-installer")


lsp_installer.setup({})

local nvim_lsp = require("lspconfig")

--[[
-- local servers = { "pyright", "clangd", "sumneko_lua"}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup({
        on_attach = on_attach,
        capabilities = capabilities,
    })
end
--]]

-- local servers = { "pyright", "ccls"}
local servers = lsp_installer.get_installed_servers()
-- table.insert(servers, "ccls")
-- for _, server in ipairs(lsp_installer.get_installed_servers()) do
for _, server in ipairs(servers) do
    if server.name == "sumneko_lua" then
    -- if server == "sumneko_lua" then
		nvim_lsp.sumneko_lua.setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = { globals = { "vim", "packer_plugins" } },
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
						},
						maxPreload = 100000,
						preloadFileSize = 10000,
					},
					telemetry = { enable = false },
				},
			},
		})
    elseif server.name == "ccls" then
		nvim_lsp.ccls.setup({
            cmd = { 'ccls' },
            filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
            -- root_dir = nvim_lsp.util.root_pattern('compile_commands.json', '.ccls', 'compile_flags.txt', '.git', 'build'),
            root_dir = nvim_lsp.util.root_pattern('compile_commands.json', '.ccls', 'compile_flags.txt', '.git'),

			capabilities = capabilities,
			on_attach = custom_attach,
            -- single_file_support = true,
            init_options = {
                compilationDatabaseDirectory = "build";
            },

            -- root_dir = nvim_lsp.root_pattern('build/compile_commands.json', '.git'),
		})
    elseif server.name == "clangd" then
    -- elseif server == "clangd" then
		nvim_lsp.clangd.setup({
			capabilities = capabilities,
			single_file_support = true,
			on_attach = custom_attach,
            cmd = {"clangd"},                                 
            -- root_dir = util.root_pattern('build/compile_commands.json', '.git'),
			args = {
				"--background-index",
				"-std=c++20",
				"--pch-storage=memory",
				"--clang-tidy",
				"--suggest-missing-includes",
			},
			commands = {
				ClangdSwitchSourceHeader = {
					function()
						switch_source_header_splitcmd(0, "edit")
					end,
					description = "Open source/header in current buffer",
				},
				ClangdSwitchSourceHeaderVSplit = {
					function()
						switch_source_header_splitcmd(0, "vsplit")
					end,
					description = "Open source/header in a new vsplit",
				},
				ClangdSwitchSourceHeaderSplit = {
					function()
						switch_source_header_splitcmd(0, "split")
					end,
					description = "Open source/header in a new split",
				},
			},
		})
	else
		nvim_lsp[server.name].setup({
		-- nvim_lsp[server].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
	end
end




--[[
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

local on_attach = function(_, bufnr)
    local opts = { buffer = bufnr }
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set("n", "<leader>wl", function()
        vim.inspect(vim.lsp.buf.list_workspace_folders())
    end, opts)
    vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>so", require("telescope.builtin").lsp_document_symbols, opts)
    vim.keymap.set("n", "<space>f", vim.lsp.buf.formatting, opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

-- local servers = { "clangd", "pylsp", "gopls", "tsserver" }

local servers = { "clangd" }
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup({
        on_attach = on_attach,
        capabilities = capabilities,
    })
end
--]]

