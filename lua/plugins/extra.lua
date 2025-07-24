return {
  { "folke/which-key.nvim", lazy = false },
  {
    "rlue/vim-barbaric",
    lazy = false,
    -- event = "BufRead",
    dependencies = {"lilydjwg/fcitx.vim"},
  },
  {
    "lilydjwg/fcitx.vim",
    lazy = false,
  },
  { "nvim-tree/nvim-web-devicons", lazy = true },
}
