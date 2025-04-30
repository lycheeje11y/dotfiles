return {
	"gitpushjoe/zuzu.nvim",
	opts = {
		keymaps = {
			build = {
				{ "<leader>z1", "<leader>z2", "<leader>z3", "<leader>z4" },
				{ "<leader>zq", "<leader>zw", "<leader>ze", "<leader>zr" },
				{ "<leader>za", "<leader>zs", "<leader>zd", "<leader>zf" },
				{ "<leader>zz", "<leader>zx", "<leader>zc", "<leader>zv" },
			},
			reopen = {
				"<leader>z.",
				'<leader>z"',
				"<leader>z:",
			},
		},
		new_profile = "<leader>z+",
		new_project_profile = "<leader>z/",
		edit_profile = "<leader>z=",
		edit_all_applicable_profiles = "<leader>z?",
		edit_all_profiles = "<leader>z*",
		edit_hooks = "<leader>zh",
		qflist_prev = "<leader>z[",
		qflist_next = "<leader>z]",
		stable_toggle_qflist = "<leader>z\\",
		toggle_qflist = "<leader>z|",
	},
}
