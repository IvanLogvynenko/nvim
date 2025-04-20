return {
	{
		"antosha417/nvim-lsp-file-operations",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-neo-tree/neo-tree.nvim",
		},
		config = function()
			require("lsp-file-operations").setup()
		end,
	},
	{
	    "nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
	    dependencies = {
	        "nvim-lua/plenary.nvim",
	        "nvim-tree/nvim-web-devicons",
	        "MunifTanjim/nui.nvim",
	        { "3rd/image.nvim", opts = {}},
	    },
	    config = function()
	        vim.cmd ":Neotree filesystem reveal right"
	        vim.keymap.set(
	            'n',
	            '<leader>r',
	            function()
	                if vim.bo.filetype == "neo-tree" then
	                    vim.cmd "wincmd p"
	                else
	                    vim.cmd ':Neotree filesystem reveal right'
	                end
	            end
	        )
	        vim.keymap.set('n', '<leader>t', ':Neotree toggle<CR>')

			vim.diagnostic.config({
				signs = {
				text = {
						[vim.diagnostic.severity.ERROR] = '',
						[vim.diagnostic.severity.WARN] = '',
						[vim.diagnostic.severity.INFO] = '',
						[vim.diagnostic.severity.HINT] = '󰌵',
					},
				}
			})

			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPattern = 1
			end,
	    lazy = false,
	}
}
