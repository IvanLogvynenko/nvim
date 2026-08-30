vim.lsp.config["rust"] = {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_markers = { "Cargo.toml", "Cargo.lock", ".git" }
}
vim.lsp.enable("rust")
