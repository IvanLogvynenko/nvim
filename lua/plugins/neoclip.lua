return {
	"AckslD/nvim-neoclip.lua",
	config = function ()
		require("neoclip").setup()
		vim.keymap.set("n", "<C-l>", ":Telescope neoclip<CR>")
	end
}
