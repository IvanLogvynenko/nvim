vim.lsp.config["ts"] = {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = {
		'javascript',
		'javascriptreact',
		'typescript',
		'typescriptreact',
	},
	root_markers = { 'package-lock.json', 'yarn.lock', 'pnpm-lock.yaml', 'bun.lockb', 'bun.lock' }
}
vim.lsp.enable("ts")

vim.lsp.config["vue"] = {
	cmd = { "vue-language-server", "--stdio" },
	filetypes = {
		"vue",
	},
	root_markers = { "package-lock.json" }
}
vim.lsp.enable("vue")

vim.lsp.config["html"] = {
	cmd = { "vscode-html-language-server", "--stdio" },
	filetypes = { "html" },
	root_markers = { 'package.json', '.git' },
}
vim.lsp.enable("html")

vim.lsp.config["css"] = {
	cmd = { "vscode-css-language-server", "--stdio" },
	filetypes = { "css", "scss", "less" },
	root_markers = { 'package.json', '.git' },
}
vim.lsp.enable("css")
