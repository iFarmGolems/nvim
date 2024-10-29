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
    "lukas-reineke/indent-blankline.nvim",
    opts = { enabled = false },
  },

  {
    "ahmedkhalf/project.nvim",
    opts = function(_, opts)
      opts.manual_mode = false
      opts.silent_chdir = false
      opts.ignore_lsp = { "jsonls" }
    end,
  },

  {
    "ibhagwan/fzf-lua",
    opts = function(_, opts)
      opts.files.actions["default"] = require("fzf-lua.actions").file_edit
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
