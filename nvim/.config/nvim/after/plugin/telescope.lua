local telescope = require('telescope')
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- Find all files
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})  -- Find files of git repo
vim.keymap.set('n', '<leader>F', builtin.live_grep, {})   -- Find text in files
vim.keymap.set('n', '<leader>b', builtin.buffers, {})     -- Find files in opened buffers
vim.keymap.set('n', '<leader>r', builtin.lsp_references, {})     -- Find files in opened buffers

telescope.setup {
    defaults = {
        i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
        },
        n = {
            ["<esc>"] = actions.close,
        }
    }
}
