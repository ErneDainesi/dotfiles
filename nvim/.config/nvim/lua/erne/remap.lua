function CopyPath()
    local filename = vim.fn.expand('%')
    local cmd = string.format("echo %s | xclip -selection clipboard", filename)
    if os.execute(cmd) then
        print(string.format("Copied path: %s", filename))
    else
        print("Couldn't copy file path")
    end
end

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>h", vim.cmd.nohlsearch)
vim.keymap.set("n", "gl", function() vim.diagnostic.open_float(0, { scope = "line", border = "rounded" }) end)
vim.keymap.set("n", "<Space>H", function() vim.lsp.buf.hover() end)
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<A-v>", "<C-w>v")
vim.keymap.set("n", "<Space>gl", ":lua require'gitsigns'.blame_line()<CR>")
vim.keymap.set("n", "<Space>cp", CopyPath)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")

vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)
