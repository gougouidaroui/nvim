local lsp_zero = require('lsp-zero')

lsp_zero.preset("recommended")

require('mason').setup({})
require('mason-lspconfig').setup({
   ensure_installed={
	'tsserver',
	'rust_analyzer',
	'lua_ls',
	'html',
	'vimls',
	'pylsp',
   },
   handlers  = {
	lsp_zero.default_setup,
   }
})

lsp_zero.on_attach(function(client, bufnr)
lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.setup()
