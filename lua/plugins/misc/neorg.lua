return {
	"nvim-neorg/neorg",
	lazy = false,
	version = "*",
	--config = true,
	config = function ()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/notes"
						},
						index = "index.norg"
					}
				}
			},
		})
	end
}
