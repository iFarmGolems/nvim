return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function()
      -- local lspconfig = require('lspconfig')

      require("typescript-tools").setup({
        handlers = {
          ["textDocument/publishDiagnostics"] = function(err, res, ctx, config)
            local isJS = res.uri:sub(-3) == ".js"

            if isJS then
              res.diagnostics = {}
            end

            vim.lsp.diagnostic.on_publish_diagnostics(err, res, ctx, config)
          end,
        },
      })
    end,
  },
  {
    "ahmedkhalf/project.nvim",
    opts = {
      manual_mode = false,
    },
  },
  {
    "iFarmGolems/deploy.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    dir = "~/develop/repos/deploy.nvim",
    config = function()
      require("deploy").setup({
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
            host = "10.111.250.93",
            label = "Referencna CLDB",
            username = "root",
          },
        },
      })
    end,
  },
}
