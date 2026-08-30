require("common")

vim.pack.add({
	{
		src = GitHub("catppuccin/nvim"),
		name = "catppuccin"
	},
	{
		src = GitHub("scottmckendry/cyberdream.nvim")
	},
	{
		src = GitHub("navarasu/onedark.nvim")
	}
})

-- vim.cmd.colorscheme("catppuccin-mocha")
-- vim.cmd.colorscheme("cyberdream")
local onedark = require("onedark")
onedark.setup({
	style = "deep"
})
onedark.load()
