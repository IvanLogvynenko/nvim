vim.lsp.config["bazel"] = {
	cmd = { 'starpls' },
	filetypes = { 'bzl' },
	root_markers = { 'WORKSPACE', 'WORKSPACE.bazel', 'MODULE.bazel' },
}
vim.lsp.enable("bazel")
