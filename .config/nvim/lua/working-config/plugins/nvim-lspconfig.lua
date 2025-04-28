return {
	'neovim/nvim-lspconfig',
	config = function()
		vim.lsp.enable('lua_ls')
	end
}
