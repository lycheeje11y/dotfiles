return {
	'nvim-flutter/flutter-tools.nvim',
	lazy = false,
	config = function()
		require("flutter-tools").setup()
	end
}
