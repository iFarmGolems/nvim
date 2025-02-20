return {
  -- treesitter indent causes issues
  { "nvim-treesitter/nvim-treesitter", opts = { indent = { enable = false } } },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_y = {}
      opts.sections.lualine_z = {
        function()
          return "D: " .. (vim.g.DEPLOY_ON_SAVE and vim.g.DEPLOY_LAST_HOST or "OFF")
        end,
      }
    end,
  },

  {
    "echasnovski/mini.pairs",
    enabled = false,
  },

  {
    "ahmedkhalf/project.nvim",
    opts = function(_, opts)
      opts.manual_mode = false
      opts.silent_chdir = false
      opts.detection_methods = { "pattern" }
      -- opts.scope_chdir = "tab"
      -- opts.ignore_lsp = { "jsonls" }
      opts.patterns = { "package.json", "tsconfig.json", "jsconfig.json", ".git" }
    end,
  },

  {
    "ibhagwan/fzf-lua",
    opts = function(_, opts)
      opts.files.actions["default"] = require("fzf-lua.actions").file_edit
    end,
  },

  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft.javascript = { "eslint_d", "prettier" }
      opts.formatters_by_ft.typescript = { "eslint_d", "prettier" }
    end,
  },

  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      local linters_by_ft = opts.linters_by_ft

      linters_by_ft.javascript = { "eslint_d" }
      linters_by_ft.typescript = { "eslint_d" }
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "eslint_d")
    end,
  },

  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.indent = { enabled = false }
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      kind_filter = {
        default = {
          "Class",
          "Constructor",
          "Enum",
          "Field",
          "Function",
          "Interface",
          "Method",
          "Module",
          "Namespace",
          "Package",
          "Property",
          "Struct",
          "Trait",
          -- add these to symbol search
          "Constant",
          "Variable",
        },
      },
    },
  },
}
