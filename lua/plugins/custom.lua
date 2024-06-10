return {
  -- { "savq/melange-nvim" },
  -- { "luisiacc/gruvbox-baby", branch = "main" },
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = true,
          comments = false,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  -- this causes issues
  { "nvim-treesitter/nvim-treesitter", opts = { indent = { enable = false } } },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = { enabled = false },
  },
  -- { "tris203/precognition.nvim", event = "VeryLazy", config = {} },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function()
      -- local lspconfig = require('lspconfig')

      require("typescript-tools").setup({
        handlers = {
          ["textDocument/publishDiagnostics"] = function(err, res, ctx, config)
            local js_extensions = { "js", "mjs" }

            local is_js = vim.iter(js_extensions):any(function(ext)
              return vim.fn.fnamemodify(res.uri, ":e") == ext
            end)

            if is_js then
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
    dir = "~/develop/repos/deploy.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("deploy").setup({
        honor_gitignore = true,
        tool = "rsync",
        mapping = {
          {
            fs = "/home/patrik/develop/repos/mis/sw/ims/ims4/Web/src/main/webapp",
            remote = "/opt/ims/tomcat/webapps/ims",
          },
        },
        hosts = {
          {
            host = "10.111.8.1",
            label = "Grecko",
            username = "root",
          },
          {
            host = "10.111.250.93",
            label = "Referencna CLDB",
            username = "root",
          },
        },
      })
    end,
  },
}
