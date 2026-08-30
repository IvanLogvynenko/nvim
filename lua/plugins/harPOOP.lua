require("common")

vim.pack.add({
	{ src = GitHub("ThePrimeagen/harpoon"), version = "harpoon2" }
})

local harpoon = require("harpoon")
harpoon.setup()

vim.keymap.set("n", "<leader>j", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>k", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>l", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>;", function()
	harpoon:list():select(4)
end)

vim.keymap.set("n", "<A-1>", function()
	harpoon:list():replace_at(1)
end)
vim.keymap.set("n", "<A-2>", function()
	harpoon:list():replace_at(2)
end)
vim.keymap.set("n", "<A-3>", function()
	harpoon:list():replace_at(3)
end)
vim.keymap.set("n", "<A-4>", function()
	harpoon:list():replace_at(4)
end)
