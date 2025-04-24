--INFO contains all shit I want to try out without ruining general config
return {
	{
		"folke/twilight.nvim",
		cond = false,
	},
	{
		"folke/ts-comments.nvim",
		opts = {},
		event = "VeryLazy",
		enabled = vim.fn.has("nvim-0.10.0") == 1,
		cond = false,
		config = function()
			--INFO comment
		end,
	},
	{
		"sphamba/smear-cursor.nvim",
		opts = {},
	},
}
