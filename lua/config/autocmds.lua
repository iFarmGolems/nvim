-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd([[
  autocmd FileType javascript setlocal colorcolumn=80
]])

vim.cmd([[
  autocmd FileType markdown setlocal colorcolumn=80
]])
