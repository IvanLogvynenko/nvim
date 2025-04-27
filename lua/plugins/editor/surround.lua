return {
	"tpope/vim-surround",
	config = function()
		-- Full vscode like surrounding
		local surround_map = {
			['s"'] = { pre = '"', post = '"' },
			["'"] = { pre = "'", post = "'" },
			["`"] = { pre = "`", post = "`" },
			["("] = { pre = "(", post = ")" },
			["["] = { pre = "[", post = "]" },
			["{"] = { pre = "{", post = "}" },
		}

		for key, pair in pairs(surround_map) do
			vim.keymap.set("v", key, function()
				local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
				-- Get visual selection marks
				vim.cmd("normal! " .. esc)
				vim.cmd("normal! `<i" .. pair.pre)
				vim.cmd("normal! `>la" .. pair.post)
			end, { noremap = true, silent = true })
		end
	end,
}
