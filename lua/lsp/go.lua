vim.lsp.config["go"] = {
	cmd = { "gopls" },
	filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
	root_markers = {
		"go.mod",
		".git"
	}
}
vim.lsp.enable("go")
