return {
	"kkharji/xbase",
	build = "make install",
	config = function()
		require("xbase").setup({
			mappings = {
				--- Whether xbase mapping should be disabled.
				enable = true,
				--- Open build picker. showing targets and configuration.
				build_picker = "<leader>b", --- set to 0 to disable
				--- Open run picker. showing targets, devices and configuration
				run_picker = "<leader>r", --- set to 0 to disable
				--- Open watch picker. showing run or build, targets, devices and configuration
				watch_picker = "<leader>s", --- set to 0 to disable
				--- A list of all the previous pickers
				all_picker = "<leader>ef", --- set to 0 to disable
				--- horizontal toggle log buffer
				toggle_split_log_buffer = "<leader>ls",
				--- vertical toggle log buffer
				toggle_vsplit_log_buffer = "<leader>lv",
			},
		})
	end,
}
