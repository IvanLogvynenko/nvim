return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		build = ":MasonInstall cpptools clang-format codelldb prettier stylua",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"bashls",
					"clangd",
					"cmake",
					"docker_compose_language_service",
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
					"pylsp",
					"remark_ls",
					"rust_analyzer",
					"yamlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
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
	},
	{
		"elmcgill/springboot-nvim",
		depedencies = {
			"neovim/nvim-lspconfig",
			"mfussenegger/nvim-jdtls",
			"nvim-tree/nvim-tree.lua",
		},
		config = function()
			local springboot_nvim = require("springboot-nvim")
			springboot_nvim.setup({})
		end,
	},
}
