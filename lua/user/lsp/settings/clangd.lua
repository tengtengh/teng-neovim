return {

    single_file_support = true,
    cmd = {"clangd"},
    -- root_dir = util.root_pattern('build/compile_commands.json', '.git'),
    args = {
    	"--background-index",
    	"-std=c++20",
    	"--pch-storage=memory",
    	"--clang-tidy",
    	"--suggest-missing-includes",
    },
    -- commands = {
    -- 	ClangdSwitchSourceHeader = {
    -- 		function()
    -- 			switch_source_header_splitcmd(0, "edit")
    -- 		end,
    -- 		description = "Open source/header in current buffer",
    -- 	},
    -- 	ClangdSwitchSourceHeaderVSplit = {
    -- 		function()
    -- 			switch_source_header_splitcmd(0, "vsplit")
    -- 		end,
    -- 		description = "Open source/header in a new vsplit",
    -- 	},
    -- 	ClangdSwitchSourceHeaderSplit = {
    -- 		function()
    -- 			switch_source_header_splitcmd(0, "split")
    -- 		end,
    -- 		description = "Open source/header in a new split",
    -- 	},
    -- },

}

