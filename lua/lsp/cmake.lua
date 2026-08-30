vim.lsp.config["cmake"] = {
	cmd = { "cmake-language-server" },
	filetypes = { 'cmake' },
	root_markers = { 'CMakePresets.json', 'CTestConfig.cmake', '.git', 'build', 'cmake' },
	init_options = {
		buildDirectory = 'build',
	},
}
vim.lsp.enable("cmake")
