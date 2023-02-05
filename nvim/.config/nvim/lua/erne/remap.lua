vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>h", vim.cmd.nohlsearch)
vim.keymap.set("n", "gl", function() vim.diagnostic.open_float(0, { scope = "line", border = "rounded" }) end)
vim.keymap.set("n", "<Space>H", function() vim.lsp.buf.hover() end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")
