vim.lsp.config["tofu"] = {
	cmd = { "tofu-ls", "serve" },
	filetypes = { 'opentofu', 'opentofu-vars', 'terraform', 'tofu' },
	root_markers = { '.terraform', '.git' },
}
vim.lsp.enable("tofu")
