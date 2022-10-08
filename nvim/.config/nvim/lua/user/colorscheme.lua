-- uncomment one to choose colorscheme
-- local colorscheme = require("user.tokyonight").colorscheme
-- local colorscheme = require("user.catpuccin").colorscheme
-- local colorscheme = require("user.onedark").colorscheme

local colorscheme = require("user.gruvbox").colorscheme

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
