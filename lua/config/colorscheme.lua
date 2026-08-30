require("common")

vim.pack.add({
	{
		src = GitHub("catppuccin/nvim"),
		name = "catppuccin"
	},
	{
		src = GitHub("scottmckendry/cyberdream.nvim")
	}
})

-- vim.cmd.colorscheme("catppuccin-mocha")
vim.cmd.colorscheme("cyberdream")
