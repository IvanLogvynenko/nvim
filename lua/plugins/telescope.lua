return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>q", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			local actions = require("telescope.actions")
			local telescope = require("telescope")
			telescope.setup({
				extensions = {
					["ui-select"] = { require("telescope.themes").get_dropdown({}) },
				},
				defaults = {
					mappings = {
						i = {
							["<S-Tab>"] = actions.move_selection_next,
							["<Tab>"] = actions.move_selection_previous,
							["<Space>"] = actions.toggle_selection,
						},
						n = {
							["<S-Tab>"] = actions.move_selection_next,
							["<Tab>"] = actions.move_selection_previous,
							["<Space>"] = actions.toggle_selection,
						},
					},
				},
			})
			telescope.load_extension("ui-select")
		end,
	},
}
