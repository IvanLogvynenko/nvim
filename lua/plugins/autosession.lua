require("common")

vim.pack.add({
	{ src = GitHub("rmagatti/auto-session") }
})

require("auto-session").setup({
	defaults = {
		suppressed_dirs = { "~/", "~/Dev", "~/Downloads", "/" },
	}
})
