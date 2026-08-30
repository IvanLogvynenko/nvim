require("common")

vim.pack.add({
	{
		src = GitHub("nvim-treesitter/nvim-treesitter"),
	}
})

require("nvim-treesitter").setup({
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
})
