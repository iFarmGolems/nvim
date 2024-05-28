return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  -- TS
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function()
      -- local lspconfig = require('lspconfig')

      -- lspconfig.typescript.setup({
      --   on_attach = function(client, bufnr)
      --     client.resolved_capabilities.document_formatting = false
      --     client.resolved_capabilities.document_range_formatting = false
      --     require('lsp-status').on_attach(client, bufnr)
      --   end,
      -- })

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
}
