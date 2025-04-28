return {
	{
		"folke/todo-comments.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{
				"ibhagwan/fzf-lua",
				dependencies = { "nvim-tree/nvim-web-devicons" },
				opts = {},
			},
			{
				"folke/trouble.nvim",
				opts = {},
				cmd = "Trouble",
				keys = {
					{
						"<leader>xx",
						"<cmd>Trouble diagnostics toggle<cr>",
						desc = "Diagnostics (Trouble)",
					},
					{
						"<leader>xX",
						"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
						desc = "Buffer Diagnostics (Trouble)",
					},
					{
						"<leader>cs",
						"<cmd>Trouble symbols toggle focus=false<cr>",
						desc = "Symbols (Trouble)",
					},
					{
						"<leader>cl",
						"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
						desc = "LSP Definitions / references / ... (Trouble)",
					},
					{
						"<leader>xL",
						"<cmd>Trouble loclist toggle<cr>",
						desc = "Location List (Trouble)",
					},
					{
						"<leader>xQ",
						"<cmd>Trouble qflist toggle<cr>",
						desc = "Quickfix List (Trouble)",
					},
				},
			},
		},
		opts = {
			highlight = {
				pattern = [[.*<(KEYWORDS)\s*]],
			},
		},
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({})
			local comments = require("Comment.api")
			vim.keymap.set("n", "<C-c>", comments.toggle.linewise.current, { noremap = true, silent = true })
			vim.keymap.set("v", "<C-c>", function()
				comments.toggle.linewise(vim.fn.visualmode())
			end, { noremap = true, silent = true })
		end,
	},
}
