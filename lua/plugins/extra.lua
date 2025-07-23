return {
  -- I have a separate config.mappings file where I require which-key.
  -- With lazy the plugin will be automatically loaded when it is required somewhere
  { "folke/which-key.nvim", lazy = false },

  -- {
  --   "nvim-neorg/neorg",
  --   -- lazy-load on filetype
  --   ft = "norg",
  --   -- options for neorg. This will automatically call `require("neorg").setup(opts)`
  --   opts = {
  --     load = {
  --       ["core.defaults"] = {},
  --     },
  --   },
  -- },
  --
  -- {
  --   "dstein64/vim-startuptime",
  --   -- lazy-load on a command
  --   cmd = "StartupTime",
  --   -- init is called during startup. Configuration for vim plugins typically should be set in an init function
  --   init = function()
  --     vim.g.startuptime_tries = 10
  --   end,
  -- },

  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- {
  --   "Wansmer/treesj",
  --   keys = {
  --     { "J", "<cmd>TSJToggle<cr>", desc = "Join Toggle" },
  --   },
  --   opts = { use_default_keymaps = false, max_join_length = 150 },
  -- },
  --
  -- {
  --   "monaqa/dial.nvim",
  --   -- lazy-load on keys
  --   -- mode is `n` by default. For more advanced options, check the section on key mappings
  --   keys = { "<C-a>", { "<C-x>", mode = "n" } },
  -- },
}
