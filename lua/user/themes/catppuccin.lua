

local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
  return
end
require("catppuccin").setup({
	compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
	transparent_background = false,
	term_colors = false,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		telescope = true,
		treesitter = true,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
	color_overrides = {},
	custom_highlights = {},
})
-- catppuccin.setup(
--   {
--   transparent_background = false,
--   term_colors = false,
--   styles = {    -- TODO: style setting doesn't work
--     comments = "underline",
--     functions = "bold",
--     keywords = "NONE",
--     strings = "underline",
--     variables = "NONE",
--   },
--   integrations = {
--     treesitter = true,
--     native_lsp = {
--       enabled = true,
--       virtual_text = {
--         errors = "italic",
--         hints = "italic",
--         warnings = "italic",
--         information = "italic",
--       },
--       underlines = {
--         errors = "underline",
--         hints = "underline",
--         warnings = "underline",
--         information = "underline",
--       },
--     },
--     lsp_trouble = false,
--     cmp = true,
--     lsp_saga = false,
--     gitgutter = false,
--     gitsigns = true,
--     telescope = true,
--     nvimtree = {
--       enabled = true,
--       show_root = false,
--       transparent_panel = false,
--     },
--     neotree = {
--       enabled = false,
--       show_root = false,
--       transparent_panel = false,
--     },
--     which_key = true,
--     indent_blankline = {
--       enabled = true,
--       colored_indent_levels = true,
--     },
--     dashboard = true,
--     neogit = false,
--     vim_sneak = false,
--     fern = false,
--     barbar = false,
--     bufferline = true,
--     markdown = true,
--     lightspeed = false,
--     ts_rainbow = false,
--     hop = true,
--     notify = true,
--     telekasten = true,
--     symbols_outline = true,
--   }
-- }
-- )


