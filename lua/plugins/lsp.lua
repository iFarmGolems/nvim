local nvim_lsp = require("lspconfig")

return {
  { "hrsh7th/nvim-cmp", opts = {
    completion = { autocomplete = false },
  } },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        denols = {
          filetypes = { "typescript", "typescriptreact" },
          root_dir = function(...)
            return nvim_lsp.util.root_pattern("deno.jsonc", "deno.json")(...)
          end,
        },
        vtsls = {
          root_dir = nvim_lsp.util.root_pattern("package.json"),
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
