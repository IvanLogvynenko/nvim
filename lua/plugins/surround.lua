require("common")

vim.pack.add({
	{ src = GitHub("windwp/nvim-autopairs") },
	{ src = GitHub("NStefan002/visual-surround.nvim") },
})

require("nvim-autopairs").setup({})
require("visual-surround").setup({})
