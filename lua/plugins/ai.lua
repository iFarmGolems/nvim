return {
  -- {
  --   "zbirenbaum/copilot.lua",
  --   event = "InsertEnter",
  --   opts = {
  --     suggestion = {
  --       enabled = true,
  --       auto_trigger = true,
  --       keymap = {
  --         accept = "<C-l>",
  --       },
  --     },
  --     panel = { enabled = false },
  --   },
  -- },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   enabled = false,
  -- },
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<C-l>",
        },
      })
    end,
  },
}
