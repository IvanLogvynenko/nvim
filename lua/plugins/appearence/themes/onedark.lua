return {
	"olimorris/onedarkpro.nvim",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("onedark_dark")
	end,
	cond = false,
} --I will let it here to be able to switch to this theme and have a transparent terminal for people to thing that I am somewhat cool
