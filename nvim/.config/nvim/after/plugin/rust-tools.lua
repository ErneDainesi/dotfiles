local rt = require("rust-tools")
local extension_path = vim.env.HOME .. '/.vscode-oss/extensions/vadimcn.vscode-lldb-1.8.1-universal' 
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'

rt.setup({
    server = {
        on_attach = function(_, bufnr)
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { buffer = bufnr })
            vim.keymap.set("n", "<C-h>", rt.hover_actions.hover_actions, { buffer = bufnr }) -- Hover actions
            vim.keymap.set("n", "<Leader>ag", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
    dap = {
        adapter = {
            adapter = require('rust-tools.dap').get_codelldb_adapter(codelldb_path, liblldb_path)
        }
    },
})

rt.inlay_hints.set()
