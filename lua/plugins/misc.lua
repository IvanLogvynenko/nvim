-- INFO: contains all shit I want to try out without ruining general config
return {
	{
		"folke/twilight.nvim",
		cond = false,
	},
	{
		"hrsh7th/cmp-path",
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				sources = cmp.config.sources({
					{ name = "path" },
					-- other sources like:
					{ name = "nvim_lsp" },
					{ name = "buffer" },
				}),
			})
		end,
	},
}
