local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      vim.keymap.set("n", "<C-h>", rt.hover_actions.hover_actions, { buffer = bufnr }) -- Hover actions
    end,
  },
})
-- Set inlay hints for the current buffer
rt.inlay_hints.set()
