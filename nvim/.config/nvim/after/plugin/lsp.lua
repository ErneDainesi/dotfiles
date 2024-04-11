-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'phpactor',
    'gopls'
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
lsp.defaults.cmp_mappings({
    ['C-j>'] = cmp.mapping.select_next_item(cmp_select),
    ['C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
})

local function on_attach(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
end

lsp.on_attach(on_attach)

vim.lsp.set_log_level("OFF")

lsp.setup()

cmp.setup {
    mapping = {
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
    }
}

local lsp_config = require("lspconfig")

lsp_config.phpactor.setup({
    on_attach = on_attach
})

lsp_config.gopls.setup {
    on_attach = on_attach,
    cmd = {"gopls"},
    filetypes = {"go", "gomod", "gowork", "gotmpl"}
}
