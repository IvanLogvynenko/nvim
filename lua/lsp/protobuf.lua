vim.lsp.config["protobuf"] = {
	cmd = { "protobuf-language-server" },
	filetypes = { "protobuf", "proto" },
	root_markers = {
		".git"
	}
}
vim.lsp.enable("protobuf")
