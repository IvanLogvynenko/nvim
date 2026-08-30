vim.lsp.config["bash"] = {
	cmd = { "bash-language-server" },
	filetypes = {
		"bash",
		"zsh",
		"sh"
	},
	root_markers = { ".git" },
}
vim.lsp.enable("bash")
