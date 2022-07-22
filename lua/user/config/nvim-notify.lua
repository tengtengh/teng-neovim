
local status_ok, notify =  pcall(require, "notify")
if not status_ok then
  vim.notify("notify module not found!")
  return
end

vim.notify = notify
notify.setup({
    -- background_colour = "#3A48D5", -- Tengh edit
    background_colour = "#000000", -- Tengh edit


    -- fps = 30,
    -- icons = {
    --     DEBUG = "",
    --     ERROR = "",
    --     INFO = "",
    --     TRACE = "✎",
    --     WARN = ""
    -- },

    -- level = "info",

    -- -- Minimum width for notification windows
    -- minimum_width = 50,

    -- -- Render function for notifications. See notify-render()
    -- render = "default",
    -- -- Animation style (see below for details)
    -- stages = "fade_in_slide_out",

    -- -- Default timeout for notifications
    -- timeout = 5000
})
