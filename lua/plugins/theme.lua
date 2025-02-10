local color_scheme = "gruvbox"

return {
  -- {
  --   "ribru17/bamboo.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("bamboo").setup({
  --       style = "multiplex",
  --       code_style = {
  --         comments = { italic = false },
  --       },
  --     })
  --     require("bamboo").load()
  --   end,
  -- },
  -- { "Yazeed1s/oh-lucy.nvim" },
  -- { "timmyha/henna.nvim" },
  -- {
  --   "wtfox/jellybeans.nvim",
  --   priority = 1000,
  --   config = function()
  --     require("jellybeans").setup()
  --   end,
  -- },
  {
    "ellisonleao/gruvbox.nvim",
    branch = "main",
    config = function()
      require("gruvbox").setup({
        dim_inactive = false,
        transparent_mode = false,
        contrast = "hard",
        -- terminal_colors = true, -- add neovim terminal colors
        -- undercurl = true,
        -- underline = true,
        -- bold = true,
        italic = {
          strings = false,
          emphasis = true,
          comments = false,
          operators = true,
          folds = true,
        },
        -- strikethrough = true,
        -- invert_selection = false,
        -- invert_signs = false,
        -- invert_tabline = false,
        -- invert_intend_guides = false,
        -- inverse = true, -- invert background for search, diffs, statuslines and errors
        -- contrast = "hard", -- can be "hard", "soft" or empty string
        -- palette_overrides = {},
        -- overrides = {},
        -- dim_inactive = false,
        -- transparent_mode = false,
      })
    end,
  },
  -- { "luisiacc/gruvbox-baby", branch = "main" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = color_scheme,
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = { theme = color_scheme },
  },
}
