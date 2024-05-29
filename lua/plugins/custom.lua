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
      require("deploy").setup()
    end,
  },
}
