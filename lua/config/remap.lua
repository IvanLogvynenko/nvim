vim.g.mapleader = " "
vim.g.maplocalleader = "//"

vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!!"<CR>')

vim.keymap.set("n", "<C-q>", "<cmd>qa<CR>")
vim.keymap.set("n", "<C-s>", "<cmd>wa<CR>")

local opts = { noremap = true, silent = true }

-- Move line up/down in normal mode
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", opts)
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", opts)

-- Move selection up/down in visual mode
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)

vim.keymap.set("n", "<leader>nf", ":lua require('neogen').generate()<CR>", opts)

vim.keymap.set({ "n", "v" }, "<leader>w", function()
	vim.opt.wrap = not vim.opt.wrap:get()
end)
