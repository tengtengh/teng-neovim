
local status_ok, nvim_treesitter_config = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end



nvim_treesitter_config.setup({
    ensure_installed = {
    --     "bash",
        "c",
        "cmake",
    --     "comment",
        "cpp",
    --     "css",
    --     "go",
    --     "html",
        "java",
    --     "json",
    --     "jsonc",
    --     "json5",
    --     "kotlin",
        "lua",
    --     "javascript",
        "markdown",
        "python",
    --     "rust",
    --     "scss",
    --     "svelte",
    --     "tsx",
    --     "typescript",
    --     "vue",
        "yaml",
    },

    -- ensure_installed = "all", -- one of "all", "maintained"(这个不行) (parsers with maintainers), or a list of languages

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- List of parsers to ignore installing (for "all")
    ignore_install = { "javascript" },

    -- auto tag with nvim-ts-autotag
    autotag = { enable = true },
    highlight = { enable = true },
    context_commentstring = {
        enable = true,
        enable_autocmd = false
    },
})




