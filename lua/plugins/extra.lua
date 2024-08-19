return {

  { "folke/zen-mode.nvim" },

  { "lukas-reineke/virt-column.nvim", opts = {} },

  {
    "OXY2DEV/helpview.nvim",
    lazy = false, -- Recommended

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },

  {
    "iFarmGolems/deploy.nvim",
    dir = "~/develop/repos/deploy.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("deploy").setup({
        timeout = 5,
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
