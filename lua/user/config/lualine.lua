


local colors = {
  red = '#ca1243',
  grey = '#a0a1a7',
  black = '#383a42',
  white = '#f3f3f3',
  light_green = '#83a598',
  orange = '#fe8019',
  green = '#8ec07c',
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {
        { 'filename', file_status = false, path = 1 },
        -- 'filename'
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    -- lualine_y = {'progress'},
    -- lualine_z = {'location'},
    -- lualine_y = { '%l:%c', '%p%%/%L' },
    lualine_y = {
        {'%p%%'},
        -- {'%p%%/%L'},
    },
    lualine_z = {
        -- {'%l:%c% /%L'},
        {'location'},
        {
            '%L',
            -- color = { bg = '#8d28c9', fg = colors.white },
        },

    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'location'},
    lualine_z = {'%p%%/%L'},
  },
  tabline = {},
  extensions = {},
}



