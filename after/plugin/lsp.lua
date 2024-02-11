local status, lsp = pcall(require, 'lsp-zero')
local masonStatus, mason = pcall(require, 'mason')
local masonLspStatus, masonLsp = pcall(require, 'mason-lspconfig')

if (not status) then
	print("Lsp zero not installed!")
	return
end
if (not masonStatus) then
	print("mason not installed!")
	return
end
if (not masonLspStatus) then
	print("mason-lspconfig not installed!")
	return
end

-- lsp.setup_servers({
-- 	'tsserver',
-- 	'docker_compose_language_service',
-- 	'dockerls',
-- })

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

mason.setup()

masonLsp.setup({
  ensure_installed = {},
  handlers = {
    lsp.default_setup,
  },
})

