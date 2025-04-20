return {
    {
        "williamboman/mason.nvim",
        config = function ()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
					"lua_ls",
					"clangd",
					"bashls",
					"cmake",
					"dart_debug_adapter",
					"dockerls",
					"glsl_analyzer",
					"gopls",
					"gradle_ls",
					"hyprls",
					"jdtls",
					"jsonls",
					"remark_ls",
					"nginx_language_server",
					"pbls",
					"pylsp",
					"rust_analyzer",
					"yamlls",
				},
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
			local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})

			vim.keymap.set('n', '<leader>d', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({'n', 'v'}, '<A-.>', vim.lsp.buf.code_action, {})
        end
    },
}
