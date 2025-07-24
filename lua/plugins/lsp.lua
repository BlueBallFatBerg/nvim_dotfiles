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
    },
    config = function()
      require("lspconfig").lua_ls.setup({})
      require("lspconfig").pylsp.setup({
        settings = {
          pylsp = {
            configuationSources = { "pycodestyle" },
            pycodestyle = {
              maxlinelength = 120,
            }
          }
        }
      })
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
