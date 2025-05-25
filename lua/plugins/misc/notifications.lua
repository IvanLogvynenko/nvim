return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")
		notify.setup({
			stages = "slide",
			timeout = 1500,

			on_open = function(win)
				local col = vim.o.columns
				local row = vim.o.lines
				vim.api.nvim_win_set_config(win, {
					relative = "editor",
					anchor = "SE",
					row = row - 2,
					col = col - 2,
					border = "rounded",
				})
			end,
		})
		vim.notify = notify
	end,
}
