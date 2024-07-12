-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local function read_json_file(path)
  local file = io.open(path, "r")
  if file then
    local content = file:read("*all")
    file:close()
    local obj = vim.fn.json_decode(content)
    return obj
  else
    return {}
  end
end

if vim.g.neovide then
  -- cd to /home/patrik folder by default
  vim.cmd("cd ~")

  vim.g.neovide_fullscreen = true
  vim.g.neovide_refresh_rate_idle = 5

  -- font https://neovide.dev/configuration.html?highlight=font#display
  vim.o.guifont = "Comic Code Ligatures:h12:#e-subpixelantialias"
  -- vim.g.neovide_transparency = 0.98

  -- animations
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_scroll_animation_length = 0
end

-- vim.opt.linespace = 2
vim.o.tabstop = 2
vim.opt.autoindent = true

vim.g.gruvbox_baby_comment_style = "NONE"
vim.g.grubbox_baby_background_color = "dark"

vim.opt.termguicolors = true
vim.opt.list = false
