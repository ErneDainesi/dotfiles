local rt = require("rust-tools")

rt.setup({
    server = {
        on_attach = function(_, bufnr)
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { buffer = bufnr })
            vim.keymap.set("n", "<C-h>", rt.hover_actions.hover_actions, { buffer = bufnr }) -- Hover actions
            vim.keymap.set("n", "<Leader>ag", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
})
-- Set inlay hints for the current buffer
rt.inlay_hints.set()
