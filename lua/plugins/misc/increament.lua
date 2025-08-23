return {
	"monaqa/dial.nvim",
	config = function()
		local dial = require("dial.map")
		local augend = require("dial.augend")

		require("dial.config").augends:register_group({
			default = {
				augend.integer.alias.decimal, -- 1,2,3...
				augend.integer.alias.hex, -- 0x01, 0x02...
				augend.date.alias["%Y/%m/%d"], -- 2025/08/23
				augend.constant.alias.bool,
			},
		})

		vim.keymap.set("n", "<C-i>", function()
			dial.manipulate("increment", "normal")
		end)
		vim.keymap.set("n", "<C-o>", function()
			dial.manipulate("decrement", "normal")
		end)
	end,
}
