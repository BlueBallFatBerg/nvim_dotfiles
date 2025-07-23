return {
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { 
      "nvim-tree/nvim-web-devicons",
      "echasnovski/mini.icons",
    },
    opts = function(_, opts)
      return {
        keymap = {
          fzf = {
            ["Tab"] = "Down",
            ["Shift-Tab"] = "Up",
            ["ctrl-x"] = function(selected)
              local file = selected[1]
              vim.cmd('split ' .. file)
            end,
            ["ctrl-v"] = function(selected)
              local file = selected[1]
              vim.cmd('vsplit ' .. file)
            end,
            ["ctrl-t"] = function(selected)
              local file = selected[1]
              vim.cmd('tabnew ' .. file)
            end,
          }
        },
      }
    end
  },
  {
    "itchyny/vim-cursorword",
    lazy = false,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy=false,
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'auto',
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff' },
          lualine_c = {{ 'filename', path = 3 }},
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
      }
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
}
