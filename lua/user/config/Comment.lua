
local status_ok, Comment = pcall(require, "Comment")
if not status_ok then
  vim.notify("Comment not found")
  return
end

Comment.setup()

