-- deleting with "x" will not save the deleted text to the register
vim.keymap.set("n", "x", '"_x')

-- spectre
vim.keymap.del("n", "<leader>sr")

vim.keymap.set(
  "n",
  "<leader>sri",
  '<cmd>lua require("grug-far").grug_far({ prefills = { search = vim.fn.expand("<cword>"), flags = vim.fn.expand("%") } })<CR>',
  {
    desc = "Replace current word in current file",
  }
)

vim.keymap.set(
  "n",
  "<leader>sra",
  '<cmd>lua require("grug-far").grug_far({ prefills = { search = vim.fn.expand("<cword>") } })<CR>',
  {
    desc = "Replace current word in all files",
  }
)

vim.keymap.set(
  "v",
  "<leader>srvi",
  '<cmd><C-u>lua require("grug-far").with_visual_selection({ flags = vim.fn.expand("%") })<CR>',
  {
    desc = "Replace visual selection in current file",
  }
)

vim.keymap.set("v", "<leader>srva", '<cmd>lua require("grug-far").with_visual_selection()<CR>', {
  desc = "Replace visual selection in all files",
})
