return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function ()
			require("toggleterm").setup()
			vim.keymap.set({"v", "n", "i"}, "<C-t>", "<cmd>ToggleTerm direction=float<CR>")
		end,
	},
}
