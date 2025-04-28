return {
	"gitpushjoe/zuzu.nvim",
	config = function()
		require("zuzu").setup({
			build_count = 4,
			display_strategy_count = 3,
			keymaps = {
				build = {
					{ "<leader>zu", "<leader>ZU", "<leader>zU", "<leader>Zu" },
					{ "<leader>zv", "<leader>ZV", "<leader>zV", "<leader>Zv" },
					{ "<leader>zs", "<leader>ZS", "<leader>zS", "<leader>Zs" },
				},
				reopen = {
					"<leader>z,",
					'<leader>z"',
					"<leader>z:",
				},
				new_profile = "<leader>z+",
				new_project_profile = "<leader>z/",
				edit_profile = "<leader>z=",
				edit_all_applicable_profiles = "<leader>z?",
				edit_all_profiles = "<leader>z*",
				edit_hooks = "<leader>zh",
			},
			display_strategies = {
				require("zuzu.display_strategies").command,
				require("zuzu.display_strategies").split_right,
				require("zuzu.display_strategies").split_below,
			},
			path = {
				root = require("zuzu.platform").join_path(vim.fn.stdpath("data"), "zuzu"),
				atlas_filename = "atlas.json",
				last_output_filename = "last.txt",
			},
			core_hooks = {
				-- Note: These are actually "env:file", "env:dir", etc. on Windows.
				{ "file", require("zuzu.hooks").file },
				{ "dir", require("zuzu.hooks").directory },
				{ "parent", require("zuzu.hooks").parent_directory },
				{ "base", require("zuzu.hooks").base },
				{ "filename", require("zuzu.hooks").filename },
			},
			zuzu_function_name = "zuzu_cmd",
			prompt_on_simple_edits = false,
			hook_choices_suffix = "__c",
		})
	end,
}
