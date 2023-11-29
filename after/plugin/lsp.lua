local status, lsp = pcall(require, 'lsp-zero')

if (not status) then
    print("Lsp zero not installed!")
    return
end

lsp.setup_servers({
	'tsserver',
    'docker_compose_language_service',
    'dockerls'
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()
