vim.keymap.set("n", "<Space>dc", ":lua require('dap').continue()<CR>")
vim.keymap.set("n", "<Space>do", ":lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<Space>di", ":lua require('dap').step_into()<CR>")
vim.keymap.set("n", "<Space>dt", ":lua require('dap').step_out()<CR>")
vim.keymap.set("n", "<Space>db", ":lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set("n", "<Space>dB", ":lua require('dap').clear_breakpoints()<CR>")
vim.keymap.set("n", "<Space>du", ":lua require('dapui').toggle()<CR>")

require("dapui").setup()

local dap = require("dap")

dap.adapters.php = {
    name = "Listen for XDebug",
    type = "executable",
    command = "node",
    args = { "/home/emilio/.vscode/extensions/xdebug.php-debug-1.33.0/out/phpDebug.js" },
    port = 9000,
    pathMappings = {
        ["/home/sb-0/www/iats/code"] = "/home/sb-0/www/iats/code",
        ["/usr/share/php/IatsSandbox/vendor"] = "/home/sb-0/www/iats/code/jscore/phpcore/vendor"
    },
    xdebugSettings = {
        max_children = 30
    },
    request = "launch"
    -- command = { "/home/emilio/.local/share/nvim/mason/packages/php-debug-adapter" }
}

require('dap.ext.vscode').load_launchjs("/home/sb-0/www/iats/code/.vscode/launch.json", { phpdb = { 'php' } })

-- dap.configurations.php {
--     {
--         name = "Listen for XDebug",
--         type = "php",
--         request= "launch",
--         port = 9000,
--         log = true,
--         xdebugSettings = {
--             max_children = 30
--         },
--         pathMappings = {
--             ["/home/sb-0/www/iats/code"] = "/home/sb-0/www/iats/code",
--             ["/usr/share/php/IatsSandbox/vendor"] = "/home/sb-0/www/iats/code/jscore/phpcore/vendor"
--         },
--         --ignore = [
--         --    "**/**/*autoload*.php",
--         --    "**/ClassLoader.php",
--         --    "**/Singleton.php",
--         --    "**/ClassLoader.php"
--         --]
--     }
-- }
