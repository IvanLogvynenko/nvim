require("common")

vim.pack.add({
	{
		src = GitHub("nvim-neo-tree/neo-tree.nvim"),
		version = vim.version.range('3')
	},
	GitHub("nvim-lua/plenary.nvim"),
	GitHub("MunifTanjim/nui.nvim"),
	GitHub("nvim-tree/nvim-web-devicons"),
})

require("neo-tree").setup({})
vim.keymap.set("n", "<C-s-r>", function()
	if vim.bo.filetype == "neo-tree" then
		vim.cmd("wincmd p")
	else
		vim.cmd("Neotree filesystem right")
	end
end)
vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>")

