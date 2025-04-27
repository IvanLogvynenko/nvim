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
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.cmake.setup({
				capabilities = capabilities,
			})
			lspconfig.glsl_analyzer.setup({
				capabilities = capabilities,
			})
			lspconfig.dockerls.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.gradle_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.hyprls.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
			lspconfig.remark_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.nginx_language_server.setup({
				capabilities = capabilities,
			})
			lspconfig.pbls.setup({
				capabilities = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})
			lspconfig.yamlls.setup({
				capabilities = capabilities,
			})
			vim.diagnostic.config({
				update_in_insert = true,
				virtual_text = true,
			})

			vim.keymap.set("n", "<leader>d", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v", "i" }, "<A-,>", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
		end,
	},
	{
		"mfussenegger/nvim-jdtls",
	--	ft = { "java" },
	--	config = function()
	--		local configuration = function()
	--			local jdtls = require("jdtls")
--
	--			local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
	--			local root_dir = require("jdtls.setup").find_root(root_markers)
--
	--			local workspace_folder = vim.fn.stdpath("data")
	--				.. "/jdtls-workspace/"
	--				.. vim.fn.fnamemodify(root_dir, ":p:h:t")
--
	--			local config = {
	--				cmd = {
	--					"jdtls",
	--					"-data",
	--					workspace_folder,
	--				},
	--				root_dir = root_dir,
	--				capabilities = require("cmp_nvim_lsp").default_capabilities(),
	--			}
--
	--			jdtls.start_or_attach(config)
	--		end
	--		vim.api.nvim_create_autocmd("FileType", {
	--			pattern = "java",
	--			callback = configuration
	--		})
	--	end,
	},
}
