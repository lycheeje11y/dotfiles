return {
	'neovim/nvim-lspconfig',
	config = function()
		vim.lsp.enable('lua_ls')
		vim.lsp.enable('rust_analyzer')
		vim.lsp.enable('ruff_lsp')
		vim.lsp.enable('gdscript')
		vim.lsp.enable('zls')
		vim.lsp.enable('eslint')
		vim.lsp.enable('bashls')
		vim.lsp.enable('arduino_language_server')
		vim.lsp.enable('jdtls')
		vim.lsp.enable('cssls')
		vim.lsp.enable('html')
		vim.lsp.enable('ts_ls')
	end
}
