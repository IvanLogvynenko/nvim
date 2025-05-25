-- INFO: contains all shit I want to try out without ruining general config
return {
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
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local last_buf = nil

			vim.api.nvim_create_autocmd("BufLeave", {
				callback = function()
					last_buf = vim.api.nvim_get_current_buf()
				end,
			})
			vim.keymap.set({ "n", "i" }, "<C-Tab>", function()
				if last_buf and vim.api.nvim_buf_is_valid(last_buf) then
					vim.api.nvim_set_current_buf(last_buf)
				end
			end, { desc = "Toggle to last used buffer" })

			vim.keymap.set({ "n", "i" }, "<C-j>", "<cmd>BufferPrevious<CR>")
			vim.keymap.set({ "n", "i" }, "<C-k>", "<cmd>BufferNext<CR>")

			vim.keymap.set({ "n", "i" }, "<A-l>", "<cmd>BufferMoveNext<CR>", { silent = true })
			vim.keymap.set({ "n", "i" }, "<A-h>", "<cmd>BufferMovePrevious<CR>", { silent = true })

			vim.keymap.set({ "n", "i" }, "<C-w>", "<cmd>BufferClose<CR>")

			vim.keymap.set("n", "<Tab><Tab>", function()
				require("telescope.builtin").buffers({
					sort_mru = true,
					ignore_current_buffer = true,
				})
			end)
		end,
	},
	{
		"dstein64/vim-startuptime",
		cmd = "StartupTime",
		init = function()
			vim.g.startuptime_tries = 10
		end,
	},
}
