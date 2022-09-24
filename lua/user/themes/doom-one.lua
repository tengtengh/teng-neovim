
-- for doom-one colorscheme

-- local status_ok, doom_one = pcall(require, "doom-one")
-- if not status_ok then
--   vim.notify("doom-one theme not found!")
--   return
-- end


    setup = function()
        -- Add color to cursor
		vim.g.doom_one_cursor_coloring = false
		-- Set :terminal colors
		vim.g.doom_one_terminal_colors = true
		-- Enable italic comments
		vim.g.doom_one_italic_comments = false
		-- Enable TS support
		vim.g.doom_one_enable_treesitter = true
		-- Color whole diagnostic text or only underline
        vim.g.doom_one_diagnostics_text_color = false
		-- Enable transparent background
		vim.g.doom_one_transparent_background = false

        -- Pumblend transparency
		vim.g.doom_one_pumblend_enable = false
		vim.g.doom_one_pumblend_transparency = 20

        -- Plugins integration
		vim.g.doom_one_plugin_neorg = true
		vim.g.doom_one_plugin_barbar = false
		vim.g.doom_one_plugin_telescope = false
		vim.g.doom_one_plugin_neogit = true
		vim.g.doom_one_plugin_nvim_tree = true
		vim.g.doom_one_plugin_dashboard = true
		vim.g.doom_one_plugin_startify = true
		vim.g.doom_one_plugin_whichkey = true
		vim.g.doom_one_plugin_indent_blankline = true
		vim.g.doom_one_plugin_vim_illuminate = true
		vim.g.doom_one_plugin_lspsaga = false
	end

	config = function() end

    vim.cmd("colorscheme doom-one")




-- doom_one.setup({

--         cursor_coloring = false,
--         terminal_colors = false,
--         italic_comments = true,
--         enable_treesitter = true,
--         transparent_background = false,
--         pumblend = {
--             enable = true,
--             transparency_amount = 20,
--         },
--         plugins_integrations = {
--             neorg = true,
--             barbar = true,
--             bufferline = false,
--             gitgutter = false,
--             gitsigns = true,
--             telescope = false,
--             neogit = true,
--             nvim_tree = true,
--             dashboard = true,
--             startify = true,
--             whichkey = true,
--             indent_blankline = true,
--             vim_illuminate = true,
--             lspsaga = false,
--         },
-- })
-- vim.o.background = "light"


-- doomone_coloscheme.load()






