-- if true then return {} end

local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local kind_icons = {
  Text = "󰉿",
	Method = "󰆧",
	Function = "󰊕",
	Constructor = "",
  Field = " ",
	Variable = "󰀫",
	Class = "󰠱",
	Interface = "",
	Module = "",
	Property = "󰜢",
	Unit = "󰑭",
	Value = "󰎠",
	Enum = "",
	Keyword = "󰌋",
  Snippet = "",
	Color = "󰏘",
	File = "󰈙",
  Reference = "",
	Folder = "󰉋",
	EnumMember = "",
	Constant = "󰏿",
  Struct = "",
	Event = "",
	Operator = "󰆕",
  TypeParameter = " ",
	Misc = " ",
}

return {
  "hrsh7th/nvim-cmp",
  lazy = false,
  keys = { ":", "/", "?" }, -- lazy load cmp on more keys along with insert mode
  dependencies = {
    "hrsh7th/cmp-cmdline",
	  "hrsh7th/cmp-buffer",
	  "hrsh7th/cmp-path",
	  "hrsh7th/cmp-nvim-lsp",
	  "hrsh7th/cmp-nvim-lua",
	  "saadparwaiz1/cmp_luasnip",
    -- "L3MON4D3/LuaSnip",
  },
  -- require("luasnip/loaders/from_vscode").lazy_load(),
  -- require("luasnip.loaders.from_vscode").lazy_load({
  --   paths = { vim.fn.stdpath("config") .. "/snippets" },
  -- }),
  config = function(plugin, opts)
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    cmp.setup({
      enabled = true,
      sources = cmp.config.sources({
        { name = "nvim_lsp", },
        { name = "luasnip", },
        { name = "buffer", },
        { name = "path", },
      }),
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = {
			  ["<C-k>"] = cmp.mapping.select_prev_item(),
			  ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-e>"] = cmp.mapping {
          i = cmp.mapping.abort(),
          c = cmp.mapping.close(),
        },
				["<CR>"] = cmp.mapping(function(fallback)
					if cmp.visible() and cmp.get_selected_entry() ~=nil then
						cmp.confirm({
							behavior = cmp.ConfirmBehavior.Select,
						})
					else
						fallback()
					end
				end),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expandable() then
            luasnip.expand()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif check_backspace() then
            fallback()
          else
            fallback()
          end
        end, {
          "i",
          "s",
        }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, {
          "i",
          "s",
        }),
			},
			formatting = {
			  fields = { "kind", "abbr", "menu" },
				expandable_indicator = false,
				format = function(entry, item)
				  item.kind = string.format("%s", kind_icons[item.kind])
				  item.menu = ({
				    buffer = "[Buffer]",
				    nvim_lsp = "[LSP]",
				    luasnip = "[Snippet]",
				    path = "[Path]",
				  })[entry.source.name]
				  return item
				end,
			},
    })

    cmp.setup.cmdline("/", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        {
          name = "cmdline",
          option = {
            ignore_cmds = { "Man", "!" },
          },
        },
      }),
    })
  end,
}

