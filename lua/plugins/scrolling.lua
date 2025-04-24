return {
	"karb94/neoscroll.nvim",
	config = function()
		local scroll = require("neoscroll")
		vim.keymap.set({ "n", "v", "x", "i" }, "<C-d>", function()
			scroll.scroll(-0.1, { move_cursor = true, duration = 100 })
		end)
		vim.keymap.set({ "n", "v", "x", "i" }, "<C-f>", function()
			scroll.scroll(0.1, { move_cursor = true, duration = 100 })
		end)
	end,
}
