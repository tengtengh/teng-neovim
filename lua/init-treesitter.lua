
local status_ok, nvim_treesitter_config = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end



nvim_treesitter_config.setup({
    ensure_installed = {
        "go",
        "bash",
        "c",
        "cpp",
        "cmake",
        "lua",
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "tsx",
        "vue",
        "svelte",
        "json",
        "json5",
        "jsonc",
        "rust",
        "java",
        "kotlin",
        "python",
        "comment",
    },

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




