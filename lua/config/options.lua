local utils = require("helpers.utils")

if vim.g.neovide then
  -- cd to /home/patrik folder by default
  vim.cmd("cd ~")

  vim.g.neovide_fullscreen = true

  -- font https://neovide.dev/configuration.html?highlight=font#display
  vim.o.guifont = "Comic Code Ligatures:h11"
  vim.g.neovide_transparency = 0.98

  local flags = utils.read_json(vim.fn.expand("~/.config/nvim/local_flags.json"))

  -- animations
  if not flags.animations then
    vim.g.neovide_cursor_animation_length = 0
    vim.g.neovide_scroll_animation_length = 0
  end

  vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end

vim.g.snacks_animate = false

vim.o.tabstop = 2
vim.opt.autoindent = true

vim.g.gruvbox_baby_comment_style = "NONE"
vim.g.grubbox_baby_background_color = "dark"

vim.opt.termguicolors = true
vim.opt.list = false
vim.opt.colorcolumn = "81"
