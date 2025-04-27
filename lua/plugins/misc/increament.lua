return {
	"monaqa/dial.nvim",
	config = function ()
		local dial = require("dial.map")
		vim.keymap.set("n", "<C-i>", function() dial.manipulate("increment", "normal") end)
		vim.keymap.set("n", "<C-o>", function() dial.manipulate("decrement", "normal") end)
	end
}
