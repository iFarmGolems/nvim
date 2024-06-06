-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.g.neovide then
  -- cd to /home/patrik folder by default
  vim.cmd("cd /home/patrik/develop/repos")

  -- font https://neovide.dev/configuration.html?highlight=font#display
  vim.o.guifont = "Comic Code Ligatures:h12"
  vim.g.neovide_transparency = 0.97
end

vim.opt.termguicolors = true
vim.g.gruvbox_baby_comment_style = "NONE"
-- vim.g.gruvbox_baby_transparent_mode = true

-- vim.opt.autoindent = true
-- vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
