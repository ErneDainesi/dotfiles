local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- Find all files
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})  -- Find files of git repo
vim.keymap.set('n', '<leader>F', builtin.live_grep, {})   -- Find text in files
vim.keymap.set('n', '<leader>b', builtin.buffers, {})     -- Find files in opened buffers
