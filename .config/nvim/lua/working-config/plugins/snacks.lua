return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		bigfile = { enabled = true },
		explorer = { enabled = false },
		indent = { enabled = true },
		input = { enabled = true },
		picker = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
		debug = { enabled = true },
		scratch = { enabled = true },
		lazygit = { enabled = true },
		image = { enabled = true },
	},
	config = function()
		local snacks = require("snacks")
		vim.keymap.set("n", "<leader>lg", function()
			snacks.lazygit.open()
		end, { desc = "Open lazygit" })
		vim.keymap.set("n", "<leader>.", function()
			snacks.scratch()
		end, { desc = "Open scratch buffer" })
		vim.keymap.set("n", "<leader>S", function()
			snacks.scratch.select()
		end, { desc = "Select a scratch buffer" })
	end,
}
