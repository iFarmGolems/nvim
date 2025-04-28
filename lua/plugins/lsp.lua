local nvim_lsp = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        -- vtsls = {
        --   single_file_support = false,
        --   root_dir = nvim_lsp.util.root_pattern("package.json"),
        --   settings = {
        --     javascript = {
        --       suggest = {
        --         names = false,
        --         paths = false,
        --         autoImports = false,
        --         includeCompletionsForImportStatements = false,
        --         completeFunctionCalls = false,
        --       },
        --     },
        --   },
        -- },
      },
    },
  },
}
