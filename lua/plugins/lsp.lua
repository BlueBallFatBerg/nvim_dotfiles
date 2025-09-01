-- "neovim/nvim-lspconfig",
-- "williamboman/mason.nvim",
-- "williamboman/mason-lspconfig.nvim",
-- "jay-babu/mason-null-ls.nvim"
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
      },
      {
        "jay-babu/mason-null-ls.nvim"
      },
    },
    config = function()
      require("lspconfig").lua_ls.setup({})
      require("lspconfig").pylsp.setup({
        settings = {
          pylsp = {
            configuationSources = { "pycodestyle" },
            pycodestyle = {
              maxLineLength = 120,
            }
          }
        }
      })
      -- require("lspconfig").pyright.setup({})
      require("lspconfig").pyright.setup({
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              diagnosticMode = "workspace",
              typeCheckingMode = "off",
              useLibraryCodeForTypes = false,
            }
          }
        }
      })
    end,
  }
}
