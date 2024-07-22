-- deleting with "x" will not save the deleted text to the register
vim.keymap.set("n", "x", '"_x')

-- grug-far overrides
vim.keymap.del({ "n", "v" }, "<leader>sr")

-- normal mode
vim.keymap.set("n", "<leader>sri", function()
  require("grug-far").grug_far({ prefills = { search = vim.fn.expand("<cword>"), flags = vim.fn.expand("%") } })
end, {
  desc = "Replace current word in current file",
})

vim.keymap.set("n", "<leader>sra", function()
  require("grug-far").grug_far({ prefills = { search = vim.fn.expand("<cword>") } })
end, {
  desc = "Replace current word in all files",
})

-- visual mode
vim.keymap.set("v", "<leader>sri", function()
  require("grug-far").with_visual_selection({ prefills = { flags = vim.fn.expand("%") } })
end, {
  desc = "Replace visual selection in current file",
})

vim.keymap.set("v", "<leader>sra", function()
  require("grug-far").with_visual_selection()
end, {
  desc = "Replace visual selection in all files",
})
