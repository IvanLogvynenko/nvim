require("common")

vim.pack.add({
	{ src = GitHub("nvim-lualine/lualine.nvim") },
})

require("lualine").setup({
	options = {
		theme = "dracula",
	}
})
