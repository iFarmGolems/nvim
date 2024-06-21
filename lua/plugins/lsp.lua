return {
  {
    "neovim/nvim-lspconfig",
    opts = {
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
