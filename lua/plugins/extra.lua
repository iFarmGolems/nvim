return {

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
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("deploy").setup({
        timeout = 10,
        honor_gitignore = true,
        tool = "rsync",
        hosts = {
          {
            host = "10.111.8.26",
            label = "Bosna 1025 DEV",
          },
        },
        mapping = {
          {
            fs = "/home/patrik/develop/repos/mis/sw/ims/ims4/Web/src/main/webapp",
            remote = "/opt/ims/tomcat/webapps/ims",
          },
        },
      })
    end,
  },
}
