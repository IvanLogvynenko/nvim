require("common")

vim.pack.add({
	{ src = GitHub("akinsho/toggleterm.nvim") }
})

require("toggleterm").setup()
vim.keymap.set({ "v", "n" }, "<C-t>", "<cmd>ToggleTerm direction=float<CR>")
