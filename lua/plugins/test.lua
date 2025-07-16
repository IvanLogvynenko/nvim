-- INFO: contains all shit I want to try out without ruining general config
return {
	{ "MeanderingProgrammer/render-markdown.nvim" },
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
		opts = {
			completions = { lsp = { enabled = true } },
		},
	},
	{ "sitiom/nvim-numbertoggle" },
}
