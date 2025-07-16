return {
		"hrsh7th/cmp-path",
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				sources = cmp.config.sources({
					{ name = "path" },
					{ name = "nvim_lsp" },
					{ name = "buffer" },
				}),
			})
		end,
}
