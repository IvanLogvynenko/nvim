vim.lsp.config["java"] = {
	cmd = { "jdtls" },
	filetypes = { "java" },
	root_markers = { "settings.gradle", "build.gradle", "build.gradle.kts", "gradlew", ".git" }
}
vim.lsp.enable("java")
