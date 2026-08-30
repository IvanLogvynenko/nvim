local fzf = require('fzf-lua')

vim.keymap.set("n", "<leader>d", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, {})
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})

vim.keymap.set("n", "<leader>kl", vim.diagnostic.open_float, {})
vim.keymap.set("n", "<leader>kk", fzf.diagnostics_document, { desc = "List all diagnostics" })

vim.keymap.set({ "n", "v", "i" }, "<A-,>", fzf.lsp_code_actions, {})
vim.keymap.set('n', 'gd', fzf.lsp_definitions, { desc = "Go to definition (fzf)" })
vim.keymap.set("n", "<leader>gt", fzf.lsp_typedefs, { desc = "Type definition (fzf)" })
vim.keymap.set("n", "<leader>gr", fzf.lsp_references, { desc = "References (fzf)" })
vim.keymap.set("n", "<leader>gi", fzf.lsp_implementations, { desc = "Implementation (fzf)" })
