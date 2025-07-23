-- if true then return {} end
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
          require("mason").setup()
        end,
      },
      {
        "williamboman/mason-lspconfig.nvim",
        -- opts = {
        --   ensure_installed = {
        --     "lua_ls",
        --     "pyright",
        --     "pylsp",
        --   }
        -- },
      },
      {
        "jay-babu/mason-null-ls.nvim"
      },
    }
  }
}
