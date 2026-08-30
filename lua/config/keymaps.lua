vim.g.mapleader = " "
vim.g.maplocalleader = "//"

vim.keymap.set("n", "<leader>p", "<cmd>restart<CR>")

vim.keymap.set("n", "<C-s>", "<cmd>wa<CR>")
vim.keymap.set("n", "<C-q>", "<cmd>qa<CR>")

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", opts)
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", opts)

vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)

vim.keymap.set({ "n", "v" }, "<leader>w", function()
	vim.opt.wrap = not vim.opt.wrap:get()
end)

vim.keymap.set({ "n", "v" }, ";", "$", opts)
