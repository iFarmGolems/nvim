return {
  -- treesitter indent causes issues
  { "nvim-treesitter/nvim-treesitter", opts = { indent = { enable = false } } },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_z = {
        function()
          return "Deploy on save: " .. (vim.g.DEPLOY_ON_SAVE and vim.g.DEPLOY_LAST_HOST or "OFF")
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
      opts.silent_chdir = true
    end,
  },
}
