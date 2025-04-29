return {
	'neovim/nvim-lspconfig',
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		vim.lsp.config('*', {
			capabilities = capabilities
		})

		local keymap = vim.keymap
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }

				opts.desc = "Show LSP References"
				keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

				opts.desc = "Go to declaration"
				keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

				opts.desc = "Go to declaration"
				keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

				opts.desc = "Code actions"
				keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

				opts.desc = "Smart rename"
				keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

				opts.desc = "Show documentation for what is under cursor"
				keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
			end,
		})

		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = '',
					[vim.diagnostic.severity.WARN] = '',
					[vim.diagnostic.severity.HINT] = '󰠠',
					[vim.diagnostic.severity.INFO] = '',
				}
			},
			virtual_text = true,
		})


		vim.lsp.enable('lua_ls')
		vim.lsp.enable('rust_analyzer')
		vim.lsp.enable('ruff')
		vim.lsp.enable('gdscript')
		vim.lsp.enable('zls')
		vim.lsp.enable('eslint')
		vim.lsp.enable('bashls')
		vim.lsp.enable('arduino_language_server')
		vim.lsp.enable('jdtls')
		vim.lsp.enable('clangd')
		vim.lsp.enable('cssls')
		vim.lsp.enable('html')
		vim.lsp.enable('ts_ls')
	end
}
