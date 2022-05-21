return {
    
    cmd = { 'ccls' },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
    -- root_dir = nvim_lsp.util.root_pattern('compile_commands.json', '.ccls', 'compile_flags.txt', '.git', 'build'),
    root_dir = require("lspconfig").util.root_pattern('compile_commands.json', '.ccls', 'compile_flags.txt', '.git'),
    
    -- single_file_support = true,
    init_options = {
        compilationDatabaseDirectory = "build";
    },
    
    -- root_dir = nvim_lsp.root_pattern('build/compile_commands.json', '.git'),

}

