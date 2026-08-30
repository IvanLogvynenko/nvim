-- Esp32 setup
vim.pack.add({ "https://github.com/Aietes/esp32.nvim", "https://github.com/folke/snacks.nvim" })
local esp32 = require("esp32")
esp32.setup()
vim.lsp.config("esp32", esp32.lsp_config())

-- Plain C/Cpp setup
vim.lsp.config["cpp"] = {
	cmd = { "clangd" },
	filetypes = { "c", "cpp", "cuda" },
	root_markers = {
		".clang-tidy",
		".clang-format",
		".git"
	}
}

local function is_espidf()
	local build_clang = vim.fn.getcwd() .. "/build.clang"
	local stat = vim.loop.fs_stat(build_clang)
	return stat and stat.type == "directory"
end

if is_espidf() then
	vim.lsp.enable({ "esp32" })
else
	vim.lsp.enable({ "cpp" })
end
