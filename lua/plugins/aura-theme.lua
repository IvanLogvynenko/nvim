return {
	{
		"baliestri/aura-theme", 
		lazy = false,
		prioryty = 1000,
		config = function(plugin) 
			vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
			vim.cmd([[colorscheme aura-dark]])
		end,
	}
}
