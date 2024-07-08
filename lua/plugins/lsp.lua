return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        vtsls = {
          settings = {
            javascript = {
              suggest = {
                names = false,
                paths = false,
                autoImports = false,
                includeCompletionsForImportStatements = false,
              },
            },
          },
        },
      },
    },
  },
}
