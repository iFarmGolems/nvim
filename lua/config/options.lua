local utils = require("helpers.utils")

if vim.g.neovide then
  -- cd to /home/patrik folder by default
  vim.cmd("cd ~")

  vim.g.neovide_fullscreen = true

  -- font https://neovide.dev/configuration.html?highlight=font#display
  vim.o.guifont = "Comic Code Ligatures:h11"
  -- vim.g.neovide_transparency = 0.98

  vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end

vim.g.snacks_animate = false
vim.g.ai_cmp = false

vim.o.tabstop = 2
vim.opt.autoindent = true

vim.g.gruvbox_baby_comment_style = "NONE"
vim.g.grubbox_baby_background_color = "dark"

-- vim.opt.termguicolors = true
vim.opt.list = false
vim.opt.colorcolumn = "81"

-- User Commands ---------------------------------------------------------------
vim.api.nvim_create_user_command("CopyPath", function()
  local git_root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  local file_path = vim.fn.expand("%:p")
  local path_to_copy = file_path

  if vim.v.shell_error == 0 then
    path_to_copy = file_path:sub(#git_root + 2)
  end

  vim.fn.setreg("+", path_to_copy)
  print("Copied: " .. path_to_copy)
end, {})
