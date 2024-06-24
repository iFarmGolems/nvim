return {
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = true,
          comments = false,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },

  { "folke/zen-mode.nvim" },

  {
    "iFarmGolems/deploy.nvim",
    dir = "~/develop/repos/deploy.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("deploy").setup({
        timeout = 3,
        honor_gitignore = true,
        tool = "rsync",
        mapping = {
          {
            fs = "/home/patrik/develop/repos/mis/sw/ims/ims4/Web/src/main/webapp",
            remote = "/opt/ims/tomcat/webapps/ims",
          },
        },
        hosts = {
          {
            host = "10.111.8.1",
            label = "Grecko",
            username = "root",
          },
          {
            host = "10.111.9.31",
            label = "SHMU AWD DEV",
            username = "root",
          },
          {
            host = "10.111.250.93",
            label = "Referencna CLDB",
            username = "root",
          },
          {
            host = "10.111.8.22",
            label = "LQBK AWOS DEV",
            username = "root",
          },
          {
            host = "10.111.8.23",
            label = "Bosnia Geo Dev",
            username = "root",
          },
        },
      })
    end,
  },
}
