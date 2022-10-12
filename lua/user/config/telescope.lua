


-- local status_ok, telescope = pcall(require, "telescope")
-- if not status_ok then
--   vim.notify("telescope not found!")
--   return
-- end


local telescope = require("telescope")


telescope.setup({
    -- defaults = {
    --     borderchars = { "═", "║", "═", "║", "╔", "╗", "╝", "╚" },
    -- },
    extensions = {
        media_files = {
            filetypes = { "png", "webp", "jpg", "jpeg" },
            find_cmd = "rg",
        },
    },
})
-- telescope.load_extension("media_files")

local opt = { noremap = true, silent = true }
-- mappings
vim.keymap.set("n", "<Leader>ff", require("telescope.builtin").find_files, opt)
vim.keymap.set("n", "<Leader>fg", require("telescope.builtin").live_grep, opt)
vim.keymap.set("n", "<Leader>fb", require("telescope.builtin").buffers, opt)
vim.keymap.set("n", "<Leader>fh", require("telescope.builtin").help_tags, opt)
-- vim.keymap.set("n", "<Leader>fm", require("telescope").extensions.media_files.media_files, opt)

-- 搜索文件，开启点文件的搜索
vim.api.nvim_set_keymap("n", "<leader>fd", ":lua require(\"telescope.builtin\").find_files({hidden=true, layout_config={prompt_position=\"bottom\"}})<cr>", opt)

