local function read_json(path)
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

  -- font https://neovide.dev/configuration.html?highlight=font#display
  vim.o.guifont = "Comic Code Ligatures:h11"
  vim.g.neovide_transparency = 0.98

  local flags = read_json(vim.fn.expand("~/.config/nvim/local_flags.json"))

  -- animations
  if not flags.animations then
    vim.g.neovide_cursor_animation_length = 0
    vim.g.neovide_scroll_animation_length = 0
  end

  vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end

vim.o.tabstop = 2
vim.opt.autoindent = true

vim.g.gruvbox_baby_comment_style = "NONE"
vim.g.grubbox_baby_background_color = "dark"

vim.opt.termguicolors = true
vim.opt.list = false
vim.opt.colorcolumn = "81"
