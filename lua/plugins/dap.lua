return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			{
				"rcarriga/nvim-dap-ui",
				dependencies = {
					"nvim-neotest/nvim-nio",
					"leoluz/nvim-dap-go",
					"nvim-java/nvim-java-dap",
					"mfussenegger/nvim-dap-python",
				},
			},
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")
			dapui.setup({})
			require("dap-go").setup({})

			vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, {})
			vim.keymap.set("n", "<F5>", dap.continue, {})
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			dap.adapters.codelldb = {
				type = "server",
				port = "${port}",
				executable = {
					command = "codelldb",
					args = { "--port", "${port}" },
				},
			} --			vim.keymap.set("n", "F5", dap.continue, {})
			--			vim.keymap.set("n", "F5", dap.continue, {})
			--			vim.keymap.set("n", "F5", dap.continue, {})
		end,
	},
}
