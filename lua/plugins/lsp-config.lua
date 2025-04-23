return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				automatic_installation = true,
				ensure_installed = {
					"ast_grep",
					"bashls",
					"clang-format",
					"clangd",
					"cmake",
					"codelldb",
					"cpptools",
					"dockerls",
					"glsl_analyzer",
					"gopls",
					"gradle_ls",
					"hyprls",
					"jdtls",
					"jsonls",
					"lua_ls",
					"nginx_language_server",
					"pbls",
					"prettier",
					"pylsp",
					"remark_ls",
					"rust_analyzer",
					"stylua",
					"yamlls",
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			for server, config in pairs(lspconfig) do
				if type(config) == "table" and type(config.setup) == "function" then
					config.setup({
						capabilities = capabilities,
					})
				end
			end
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
			})

			vim.diagnostic.config({
				update_in_insert = true,
				virtual_text = true,
			})

			vim.keymap.set("n", "<leader>d", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v", "i" }, "<A-,>", vim.lsp.buf.code_action, {})
		end,
	},
}
