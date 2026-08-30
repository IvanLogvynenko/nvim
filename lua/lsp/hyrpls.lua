vim.lsp.config["hypr"] = {
	cmd = { "hyprls", "--stdio" },
	filetypes = { 'hyprlang' },
	root_markers = { '.git' },
}
vim.lsp.enable("hypr")
