require("common")

vim.pack.add({
	{ src = GitHub("saghen/blink.lib"), },
	{ src = GitHub("saghen/blink.cmp"), },
})

local cmp = require("blink.cmp")
cmp.build():pwait()
cmp.setup({
	keymap = {
		preset = "enter",

		['<Tab>'] = { 'select_next','snippet_forward', 'fallback' },
		['<S-Tab>'] = { 'select_prev','snippet_backward', 'fallback' },
	}
})
