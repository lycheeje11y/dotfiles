return {
	"stevearc/oil.nvim",
	--@module 'oil'
	--@type oil.SetupOpts
	opts = {},
	dependencies = {
		{
			"DaikyXendo/nvim-material-icon",
			config = function()
				require("nvim-web-devicons").setup({
					color_icons = true,
					default = true,
				})
			end,
		},
	},
	config = function()
		require("oil").setup({
			delete_to_trash = true,
			view_options = {
				show_hidden = true,
			}
		})
		vim.keymap.set("n", "<leader>e", "<cmd>Oil --float<CR>")
	end,
}
