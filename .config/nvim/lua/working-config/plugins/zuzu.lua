return {
	"gitpushjoe/zuzu.nvim",
	config = function()
		require("zuzu").setup({
			build_count = 4,
			display_strategy_count = 4,
			keymaps = {
				build = {
					{ "zu", "ZU", "zU", "Zu" },
					{ "zv", "ZV", "zV", "Zv" },
					{ "zs", "ZS", "zS", "Zs" },
					{ "zb", "ZB", "zB", "Zb" },
				},
				reopen = {
					"z.",
					'z"',
					"z:",
				},
				new_profile = "z+",
				new_project_profile = "z/",
				edit_profile = "z=",
				edit_all_applicable_profiles = "z?",
				edit_all_profiles = "z*",
				edit_hooks = "zh",
				qflist_prev = "z[",
				qflist_next = "z]",
				stable_toggle_qflist = "z\\",
				toggle_qflist = "z|",
			},
			display_strategies = {
				require("zuzu.display_strategies").command,
				require("zuzu.display_strategies").split_terminal(
					"vertical rightbelow", -- Split modifiers
					true -- Use "buffer mode"
				),
				require("zuzu.display_strategies").split_terminal("horizontal rightbelow", true),
				require("zuzu.display_strategies").background(
					--- Delay between each elapsed time update in milliseconds
					1000 / 8
				),
			},
			path = {
				root = require("zuzu.platform").join_path(vim.fn.stdpath("data"), "zuzu"),
				atlas_filename = "atlas.json",
				last_stdout_filename = "stdout.txt",
				-- Note: last_stderr_filename is not used on Windows
				last_stderr_filename = "stderr.txt",
				compiler_filename = "compiler.txt",
				reflect_filename = "reflect.txt",
			},
			core_hooks = {
				-- Note: these are actually "env:file", "env:dir", etc. on Windows
				{ "file", require("zuzu.hooks").file },
				{ "dir", require("zuzu.hooks").directory },
				{ "parent", require("zuzu.hooks").parent_directory },
				{ "base", require("zuzu.hooks").base },
				{ "filename", require("zuzu.hooks").filename },
			},
			colors = {
				reopen_stderr = require("zuzu.colors").bright_red,
				reflect = require("zuzu.colors").bright_yellow,
			},
			zuzu_function_name = "zuzu_cmd",
			prompt_on_simple_edits = false,
			hook_choices_suffix = "__c",
			compilers = {
				-- https://vi.stackexchange.com/a/44620
				{ "python3", '%A %#File "%f"\\, line %l\\, in %o,%Z %#%m' },
				{ "lua", "%E%\\\\?lua:%f:%l:%m,%E%f:%l:%m" },
				-- https://github.com/felixge/vim-nodejs-errorformat/blob/master/ftplugin/javascript.vim
				-- Note: This will also work for bun.
				{
					"node",
					[[%AError: %m,%AEvalError: %m,%ARangeError: %m,%AReferenceError: %m,%ASyntaxError: %m,%ATypeError: %m,%Z%*[\ ]at\ %f:%l:%c,%Z%*[\ ]%m (%f:%l:%c),%*[\ ]%m (%f:%l:%c),%*[\ ]at\ %f:%l:%c,%Z%p^,%A%f:%l,%C%m,%-G%.%#]],
				},
				{
					"bash",
					"%E%f: line %l: %m",
				},
			},
			qflist_as_diagnostic = true,
			reverse_qflist_diagnostic_order = false,
			qflist_diagnostic_error_level = "WARN",
			write_on_run = true,
			fold_profiles_in_editor = true,
			reflect = false,
			newline_after_reflect = true,
			newline_before_reopen = false,
			enter_closes_buffer = true,
			reopen_reflect = true,
		})
	end,
}
