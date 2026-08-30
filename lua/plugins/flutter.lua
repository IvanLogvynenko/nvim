require("common")

vim.pack.add({
	{ src = GitHub("nvim-flutter/flutter-tools.nvim") },
	-- deps
	{ src = GitHub("nvim-lua/plenary.nvim") },
	{ src = GitHub("stevearc/dressing.nvim") },
})

require("flutter-tools").setup({
	widget_guides = {
		enabled = true,
	}
})
