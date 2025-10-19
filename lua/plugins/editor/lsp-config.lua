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
					"marksman",
					"rust_analyzer",
					"yamlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		opts = function(_, opts)
			local esp32 = require("esp32")
			opts.servers = opts.servers or {}
			opts.servers.clangd = esp32.lsp_config()
			return opts
		end,
		config = function()
			-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- local lspconfig = require("lspconfig")
			vim.lsp.enable("lua_ls")
			-- vim.lsp.enable("eslint_lsp")
			-- vim.lsp.enable("eslint_d")
			vim.lsp.enable("clangd")
			vim.lsp.enable("bashls")
			vim.lsp.enable("cmake")
			vim.lsp.enable("glsl_analyzer")
			vim.lsp.enable("dockerls")
			vim.lsp.enable("gopls")
			vim.lsp.enable("gradle_ls")
			vim.lsp.enable("hyprls")
			vim.lsp.enable("jsonls")
			vim.lsp.enable("marksman")
			vim.lsp.enable("nginx_language_server")
			vim.lsp.enable("pbls")
			vim.lsp.enable("rust_analyzer")
			vim.lsp.enable("yamlls")

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
