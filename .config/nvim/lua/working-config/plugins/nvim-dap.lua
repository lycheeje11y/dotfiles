return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
		"wojciech-kulik/xcodebuild.nvim",
	},
	config = function()
		require("dapui").setup()

		local keymap = vim.keymap
		keymap.set("n", "<leader>sb", function()
			require("dap").toggle_breakpoint()
		end, { desc = "Toggle breakpoint" })
		keymap.set("n", "<leader>ds", function()
			require("dap").continue()
		end, { desc = "Start debug session/Resume execution" })
		keymap.set("n", "<leader>so", function()
			require("dap").step_over()
		end, { desc = "Step over code (no functions)" })
		keymap.set("n", "<leader>si", function()
			require("dap").step_into()
		end, { desc = "Step into code" })
		keymap.set("n", "<leader>is", function()
			require("dap").repl.open()
		end, { desc = "Inspect debug state" })

		-- XCODEBUILD STUFF
		--local xcodebuild = require("xcodebuild.integrations.dap")
		-- local codelldbPath = "~/.codelldb/extension/adapter/codelldb"
		-- xcodebuild.setup(codelldbPath)
		--
		-- vim.keymap.set("n", "<leader>dd", xcodebuild.build_and_debug, { desc = "Build & Debug" })
		-- vim.keymap.set("n", "<leader>dr", xcodebuild.debug_without_build, { desc = "Debug Without Building" })
		-- vim.keymap.set("n", "<leader>dx", xcodebuild.terminate_session, { desc = "Terminate Debugger" })
	end,
}
