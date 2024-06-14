-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.g.neovide then
  -- cd to /home/patrik folder by default
  vim.cmd("cd /home/patrik/develop/repos")

  -- font https://neovide.dev/configuration.html?highlight=font#display
  vim.o.guifont = "Comic Code Ligatures:h12"
  vim.g.neovide_transparency = 0.98
  vim.g.neovide_refresh_rate_idle = 5
end

-- vim.opt.linespace = 2
vim.opt.autoindent = true

vim.g.gruvbox_baby_comment_style = "NONE"
vim.opt.termguicolors = true
vim.opt.list = false

-- vim.opt.smartindent = true
-- vim.opt.tabstop = 2
-- vim.opt.shiftwidth = 2
-- vim.opt.expandtab = false
