-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.del("n", "<leader>sr")

-- deleting with "x" will not save the deleted text to the register
vim.keymap.set("n", "x", '"_x')

-- spectre
vim.keymap.set("n", "<leader>sra", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word",
})

vim.keymap.set("n", "<leader>src", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file",
})
