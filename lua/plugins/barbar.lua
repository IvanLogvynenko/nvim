require("common")

vim.pack.add({
	{ src = GitHub("romgrk/barbar.nvim") },
	--deps
	{ src = GitHub("lewis6991/gitsigns.nvim") },
	{ src = GitHub("nvim-tree/nvim-web-devicons") },
})


vim.g.barbar_auto_setup = false
require("barbar").setup({
	auto_hide = 1,
	icons = {
		buffer_index = true,
		diagnostics = {
			[vim.diagnostic.severity.ERROR] = { enabled = true },
			[vim.diagnostic.severity.WARN] = { enabled = true },
			[vim.diagnostic.severity.INFO] = { enabled = true },
			[vim.diagnostic.severity.HINT] = { enabled = true },
		},
	},
})

vim.keymap.set({ "n", "i" }, "<C-j>", "<cmd>BufferPrevious<CR>")
vim.keymap.set({ "n", "i" }, "<C-k>", "<cmd>BufferNext<CR>")

vim.keymap.set({ "n", "i" }, "<A-k>", "<cmd>BufferMoveNext<CR>", { silent = true })
vim.keymap.set({ "n", "i" }, "<A-j>", "<cmd>BufferMovePrevious<CR>", { silent = true })

vim.keymap.set({ "n", "i" }, "<C-w>", "<cmd>BufferClose<CR>")
