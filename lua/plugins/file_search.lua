require("common")
vim.pack.add({
	{
		src = GitHub("ibhagwan/fzf-lua")
	}
})

local fzf = require('fzf-lua')
fzf.register_ui_select()
fzf.setup({
	keymap = {
		fzf = {
			["tab"] = "down",
			["shift-tab"] = "up",
			["space"] = "select",
		},
	}
})


vim.keymap.set("n", "<leader>q", fzf.files, { desc = "Fzf Files" })
vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Fzf Live Grep" })
vim.keymap.set("n", "<leader>gw", fzf.grep_cword, { desc = "Fzf Word under cursor" })
vim.keymap.set("n", "<leader>gc", fzf.git_commits, { desc = "Fzf Git Commits" })
