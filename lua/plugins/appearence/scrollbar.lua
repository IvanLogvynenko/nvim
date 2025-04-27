return {
	"petertriho/nvim-scrollbar",
	opts = {},
	dependencies = {
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
			require("scrollbar.handlers.gitsigns").setup()
		end,
	},
}
