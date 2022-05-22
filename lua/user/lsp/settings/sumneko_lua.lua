
return {

    settings = {
    	Lua = {
    		diagnostics = { globals = { "vim", "use" , "packer_plugins" } },
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
}



