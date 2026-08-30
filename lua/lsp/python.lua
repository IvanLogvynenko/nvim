vim.lsp.config["python"] = {
	cmd = { "pylsp" },
	filetypes = {
		"python"
	},
	root_markers = {
		'requirements.txt',
		'.git',
	},
}
vim.lsp.enable("python")
