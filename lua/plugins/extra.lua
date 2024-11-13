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
        timeout = 10,
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
            host = "192.168.111.23",
            label = "Bosnia Geo Dev",
            username = "root",
          },
          {
            host = "172.18.1.235",
            label = "Bosnia Geo PROD",
            username = "root",
          },
        },
      })
    end,
  },
}
