vim.lsp.config["markdown"] = {
	cmd = { "marksman" },
	filetypes = { 'markdown', 'markdown.mdx' },
	root_markers = { '.marksman.toml', '.git' },
}

vim.lsp.enable("markdown")
