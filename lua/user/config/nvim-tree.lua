
-- -- 默认情况下为0，将为 git 属性启用文件突出显示（可以在没有图标的情况下使用）
-- vim.g.nvim_tree_git_hl = 1 -- 0 by default, will enable file highlight for git attributes (can be used without the icons).

-- -- 默认为0，在文件夹名称后面附加一个斜杠
-- vim.gnvim_tree_add_trailing = 1 -- 0 by default, append a trailing slash to folder names

-- 2022.07.21从全局转移到了setup中，即setup中的group_empty, 默认为true
-- 默认为0，将仅包含单个文件夹的文件夹压缩到文件树中的一个节点中
-- vim.g.nvim_tree_group_empty = 1  -- 0 by default, compact folders that only contain a single folder into one node in the file tree

-- -- 默认一个空格，用于渲染图标和文件名之间的空格。谨慎使用，如果根据字体设置空字符串，可能会破坏渲染。
-- vim.g.nvim_tree_icon_padding = ' ' -- one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.

-- -- 默认为 ' ➛ '。用作符号链接源和目标之间的分隔符。
-- vim.g.nvim_tree_symlink_arrow = ' >> ' -- defaults to ' ➛ '. used as a separator between symlinks' source and target.

-- -- 默认一个空格，用于渲染图标和文件名之间的空格。谨慎使用，如果根据字体设置空字符串，可能会破坏渲染。
-- vim.g.nvim_tree_icon_padding = ' ' -- one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.

-- -- 默认为 ' ➛ '。用作符号链接源和目标之间的分隔符。
-- vim.g.nvim_tree_symlink_arrow = ' >> ' --  defaults to ' ➛ '. used as a separator between symlinks' source and target.

-- -- 默认情况下，将在打开 nvim-tree 时将 nvim-tree 的 cwd 更改为新缓冲区的 cwd。
-- vim.g.nvim_tree_respect_buf_cwd = 1 -- 0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.

-- -- 默认为0，创建文件时，将光标在关闭文件夹上的文件路径设置为0时为父文件夹，为1时设置在文件夹内。
-- vim.g.nvim_tree_create_in_closed_folder = 1 -- 0 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.

-- -- 使用 NvimTreeSpecialFile 突出显示的文件名列表
-- vim.g.nvim_tree_special_files = { "README.md", 'Makefile', 'MAKEFILE' } --  List of filenames that gets highlighted with NvimTreeSpecialFile




--[[
vim.g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
        unstaged = "✗",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "★",
        deleted = "",
        ignored = "◌"
    },
    folder = {
        arrow_open = "",
        arrow_closed = "",
        default = "",
        -- open = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = "",
    }
}

-- setup with all defaults
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
-- nested options are documented by accessing them with `.` (eg: `:help nvim-tree.view.mappings.list`).
require'nvim-tree'.setup { -- BEGIN_DEFAULT_OPTS
  auto_reload_on_write = true,
  disable_netrw = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = false,
  sort_by = "name",
  update_cwd = false,
  -- reload_on_bufenter = false,
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = "left",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {
        -- user mappings go here
      },
    },
  },
  renderer = {
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "before",
    },
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {},
  },
  ignore_ft_on_setup = {},
  system_open = {
    cmd = "",
    args = {},
  },
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    dotfiles = false,
    custom = {},
    exclude = {},
  },
  git = {
    enable = ture,
    -- ignore = true,
    ignore = false, -- 默认为true, nvim-tree中忽略.gitignore中的文件(夹)
    timeout = 400,
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  -- live_filter = {
  --   prefix = "[FILTER]: ",
  --   always_show_folders = true,
  -- },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      diagnostics = false,
      git = false,
      profile = false,
    },
  },
} -- END_DEFAULT_OPTS
--]]


-- 2022.07.21 by Tengh
-- require("nvim-tree").setup()
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    -- adaptive_size = true,
    number = false;
    relativenumber = false;
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
    full_name = true
  },
  filters = {
    dotfiles = true,
  },
})

vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeToggle<CR>", {noremap = true, silent = true})






