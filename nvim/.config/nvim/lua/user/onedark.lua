local M = {}

local status_ok, onedark = pcall(require, "onedark")

if not status_ok then
  vim.notify("onedark theme not found!")
end

onedark.setup {
    style = 'darker',
    transparent = true,
    code_style = {
        comments = 'italic',
        keywords = 'italic',
        functions = 'bold',
        strings = 'none',
        variables = 'none'
    },
}

require('onedark').load()

return M
