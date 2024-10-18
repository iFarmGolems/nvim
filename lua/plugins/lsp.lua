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
        eslint = {
          root_dir = function(...)
            return nvim_lsp.util.root_pattern(
              "eslint.config.js",
              "eslint.config.mjs",
              "eslint.config.cjs",
              "eslint.config.ts",
              "eslint.config.mts",
              "eslint.config.cts",
              ".eslintrc.js",
              ".eslintrc.yaml",
              ".eslintrc.yml",
              ".eslintrc.json"
            )(...)
          end,
        },
        denols = {
          filetypes = { "typescript", "typescriptreact" },
          root_dir = function(...)
            return nvim_lsp.util.root_pattern("deno.jsonc", "deno.json")(...)
          end,
          settings = {
            deno = {
              offset_encoding = "utf-8",
              enable = true,
              lint = true,
              unstable = true,
              suggest = {
                imports = {
                  hosts = {
                    ["https://deno.land"] = true,
                  },
                },
              },
            },
          },
        },
        vtsls = {
          single_file_support = false,
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
