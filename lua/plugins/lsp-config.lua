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
			lspconfig.dartls.setup({
				cmd = { "dart", "language-server", "--protocol=lsp" },
				filetypes = { "dart" },
				init_options = {
					closingLabels = true,
					flutterOutline = true,
					onlyAnalyzeProjectsWithOpenFiles = true,
					outline = true,
					suggestFromUnimportedLibraries = true,
				},
				settings = {
					dart = {
						completeFunctionCalls = true,
						showTodos = true,
					},
				},
				on_attach = function(client, bufnr)
				end,
			})
			lspconfig.bashls.setup({})
			lspconfig.cmake.setup({})
			lspconfig.glsl_analyzer.setup({})
			lspconfig.dockerls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.gradle_ls.setup({})
			lspconfig.hyprls.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.remark_ls.setup({})
			lspconfig.nginx_language_server.setup({})
			lspconfig.pbls.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.yamlls.setup({})

			vim.keymap.set('n', '<leader>d', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({'n', 'v'}, '<A-.>', vim.lsp.buf.code_action, {})
        end
    },
}
