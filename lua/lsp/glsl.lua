vim.lsp.config["glsl"] = {
	cmd = { "glslang" },
	filetypes = { 'glsl', 'vert', 'tesc', 'tese', 'frag', 'geom', 'comp' },
	root_markers = { '.git' },
}
vim.lsp.enable("glsl")
