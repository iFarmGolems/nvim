return {

  { "lukas-reineke/virt-column.nvim", opts = {} },

  {
    "OXY2DEV/helpview.nvim",
    lazy = false, -- Recommended

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },

  {
    "iFarmGolems/deploy.nvim",
    dir = "~/develop/repos/deploy.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local utils = require("helpers.utils")
      local deployConfig = utils.read_json(vim.fn.expand("~/.config/nvim/deploy.json"))

      local deployOpts = {
        timeout = 10,
        honor_gitignore = true,
        tool = "rsync",
      }

      require("deploy").setup(vim.tbl_extend("force", deployOpts, deployConfig))
    end,
  },
}
