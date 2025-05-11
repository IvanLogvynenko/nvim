return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	--	cond = false,
	config = function ()
		vim.cmd.colorscheme("catppuccin")
	end,
}
