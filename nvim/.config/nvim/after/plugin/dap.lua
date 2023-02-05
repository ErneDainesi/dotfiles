vim.keymap.set("n", "<Space>dc", ":lua require('dap').continue()<CR>")
vim.keymap.set("n", "<Space>do", ":lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<Space>di", ":lua require('dap').step_into()<CR>")
vim.keymap.set("n", "<Space>dt", ":lua require('dap').step_out()<CR>")
vim.keymap.set("n", "<Space>db", ":lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set("n", "<Space>du", ":lua require('dapui').toggle()<CR>")

require("dapui").setup()
