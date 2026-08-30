vim.lsp.config["yaml"] = {
	cmd = { "yaml-language-server", "--stdio" },
	filetypes = { 'yaml', 'yaml.docker-compose', 'yaml.gitlab', 'yaml.helm-values' },
	root_markers = { '.git' }
}
vim.lsp.enable("yaml")

vim.lsp.config["json"] = {
	cmd = { "vscode-json-language-server", "--stdio" },
	filetypes = { 'json', 'jsonc' },
	init_options = {
		provideFormatter = true,
	},
	root_markers = { '.git' }
}
vim.lsp.enable("json")
