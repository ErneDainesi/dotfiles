-- uncomment one to choose colorscheme
-- local colorscheme = require("user.colors.tokyonight").colorscheme
-- local colorscheme = require("user.colors.catpuccin").colorscheme
-- local colorscheme = require("user.colors.onedark").colorscheme

local colorscheme = require("user.colors.gruvbox").colorscheme

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
