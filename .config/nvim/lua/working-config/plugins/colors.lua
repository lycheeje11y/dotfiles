return {
	"Everblush/nvim",
	name = "everblush",
	config = function()
		require("everblush").setup({

			-- Default options
			transparent_background = true,
			nvim_tree = {
				contrast = false,
			},

			-- Override the default highlights using Everblush or other colors
			override = {
				LineNr = { fg = "#b3b9b8" }, -- Adjust line number color
				CursorLineNr = { fg = "#b3b9b8" }, -- Adjust line number color
				-- Telescope-specific highlight tweaks
				TelescopeSelection = { fg = "#f6c177", bg = "#2e3440", bold = true },
			},
		})
		vim.cmd("colorscheme everblush")
	end,
}
