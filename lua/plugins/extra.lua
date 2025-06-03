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
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {
      -- settings = {
      --   separate_diagnostic_server = false,
      -- },
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
          {
            host = "10.111.2.42",
            label = "IMSASAN 991 DEV",
          },
          {
            host = "192.168.151.90",
            label = "IMSASAN 991 PROD",
          },
        },
        mapping = {
          {
            fs = "/home/patrik/develop/repos/mis/sw/ims/ims4/Web/src/main/webapp",
            remote = "/opt/ims/tomcat/webapps/ims",
            -- remote = "/var/www/app.ims/ims",
          },
        },
      })
    end,
  },
}
