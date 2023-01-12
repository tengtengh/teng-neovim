
require('illuminate').configure({
    filetypes_denylist = {
        '',
        'text',
        'NvimTree',
        'dirvish',
        'fugitive',
    },
    filetypes_allowlist = {
        'cpp',
        'py',
    },
})
