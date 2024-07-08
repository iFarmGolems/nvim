return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "supermaven-inc/supermaven-nvim",
        config = function()
          require("supermaven-nvim").setup({
            disable_inline_completion = true, -- disables inline completion for use with cmp
            disable_keymaps = true, -- disables built in keymaps for more manual control
          })
        end,
      },
    },
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.preselect = cmp.PreselectMode.None
      table.insert(opts.sources, { name = "supermaven" })
    end,
  },
}
