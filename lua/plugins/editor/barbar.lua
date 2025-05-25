-- Thing to display current buffers
return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.g.barbar_auto_setup = false
		require("barbar").setup({
			auto_hide = 1,
			icons = {
				buffer_index = true,
				diagnostics = {
					[vim.diagnostic.severity.ERROR] = { enabled = true },
					[vim.diagnostic.severity.WARN] = { enabled = true },
					[vim.diagnostic.severity.INFO] = { enabled = true },
					[vim.diagnostic.severity.HINT] = { enabled = true },
				},
			},
		})

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
			require("telescope.builtin").buffers()
		end)
	end,
}
