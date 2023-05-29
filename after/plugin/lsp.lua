local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'golangci_lint_ls',
})

local cmp = require('cmp')

lsp.defaults.cmp_mappings({
	['C-y'] = cmp.mapping.confirm({select = tru})
})

lsp.setup()
