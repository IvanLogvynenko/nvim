require("common")

vim.pack.add({
	{ src = GitHub("lewis6991/gitsigns.nvim") },
})

require("gitsigns").setup({
	current_line_blame = true,
	word_diff          = true,
})

vim.keymap.set("n", "<leader>c", "<cmd>Gitsigns toggle_linehl<CR>")
