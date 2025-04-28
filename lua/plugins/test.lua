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
	{
		"mrjones2014/legendary.nvim",
		dependencies = { "stevearc/dressing.nvim", "nvim-telescope/telescope.nvim" },
		opts = {
			include_builtin = true,
			select_prompt = "Legendary 🔍",
		},
		config = function()
			vim.keymap.set("n", ":", "<cmd>Legendary<cr>", { noremap = true, silent = true })
		end,
		cond = false,
	},
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			vim.keymap.set({ "n", "i" }, "<C-Tab>", "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })
			vim.keymap.set({ "n", "i" }, "<C-j>", "<cmd>BufferPrevious<CR>")
			vim.keymap.set({ "n", "i" }, "<C-k>", "<cmd>BufferNext<CR>")
		end,
		version = "^1.0.0",
	},
	{
		"dstein64/vim-startuptime",
		cmd = "StartupTime",
		init = function()
			vim.g.startuptime_tries = 10
		end,
	},
}
