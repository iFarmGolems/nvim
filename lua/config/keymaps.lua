-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- deleting with "x" will not save the deleted text to the register
vim.keymap.set("n", "x", '"_x')
