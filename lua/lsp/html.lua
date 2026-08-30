vim.lsp.config["html"] = {
	cmd = { "vscode-html-language-server" },
	filetypes = { "html" },
	root_markers = { 'package.json', '.git' },
}
vim.lsp.enable("html")


