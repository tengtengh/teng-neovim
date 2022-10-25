
local status_ok, github_nvim_theme = pcall(require, "github-theme")
if not status_ok then
  return
end
-- Example config in Lua
github_nvim_theme.setup({

    theme_style = "dimmed",         -- github_dimmed
    -- theme_style = "dark_default",    -- github_dark_default
    -- theme_style = "dark_colorblind", -- github_dark_colorblind
    -- theme_style = "light",           -- github_light
    -- theme_style = "light_default",           -- github_light_default
    -- theme_style = "light_colorblind",           -- github_light_colorblind
    -- theme_style = "dark_colorblind",
    -- theme_style = "dark",            -- github_dark

    -- comment_style = "italic",
    comment_style = "NONE",
    keyword_style = "NONE",
    function_style = "NONE",
    variable_style = "NONE",

    -- sidebars = {"qf", "vista_kind", "terminal", "packer"},

    -- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    -- colors = {hint = "orange", error = "#ff0000"},

    -- -- Overwrite the highlight groups
    -- overrides = function(c)
    --     return {
    --         htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
    --         DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
    --         -- this will remove the highlight groups
    --         TSField = {},
    --     }
    -- end
})







