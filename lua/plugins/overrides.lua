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
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.completion.accept.auto_brackets.enabled = false
    end,
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
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.indent = { enabled = false }
    end,
  },

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    build = "make tiktoken",
    opts = function(_, opts)
      opts.sticky = {
        "You are a helpful assistant to a senior software developer.",
        "Always consider YAGNI + SOLID + KISS + DRY principles when designing or adding new code.",
        "Prefer functional programming over OOP - But use classes for code organization where it makes sense.",
        "Do NOT make up any non-existent methods or properties.",
        "Do NOT import anything in the resulting code.",
        "'fp' variable is Lodash/fp library.",
        "JS Libs versions: Vue 2.7.16 (Composition API), Chart.js 3.9.1, OpenLayers 10.5.X, Lodash/fp 4.17.10. For other libraries assume latest version.",
      }
    end,
  },

  { "zbirenbaum/copilot.lua", opts = {
    copilot_model = "gpt-4o-copilot",
  } },

  {
    "folke/persistence.nvim",
    opts = {
      need = 0,
    },
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
