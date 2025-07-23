-- if true then return {} end

return {
  "L3MON4D3/LuaSnip",
  lazy = false,
  build = "make install_jsregexp",
  dependencies = {
    {
      "rafamadriz/friendly-snippets",
      config = function()
			  local ls = require("luasnip")
			  local s = ls.snippet
			  local sn = ls.snippet_node
			  local isn = ls.indent_snippet_node
			  local t = ls.text_node
			  local i = ls.insert_node
			  local f = ls.function_node
			  local c = ls.choice_node
			  local d = ls.dynamic_node
			  local r = ls.restore_node

			  local events = require("luasnip.util.events")
			  local ai = require("luasnip.nodes.absolute_indexer")
			  local extras = require("luasnip.extras")

        local fmt = extras.fmt
        local m = extras.m
        local l = extras.l
			  local postfix = require("luasnip.extras.postfix").postfix

			  -- local l = extras.lambda
			  -- local rep = extras.rep
			  -- local p = extras.partial
			  -- local m = extras.match
			  -- local n = extras.nonempty
			  -- local dl = extras.dynamic_lambda

			  -- local fmt = require("luasnip.extras.fmt").fmt
			  -- local fmta = require("luasnip.extras.fmt").fmta
			  -- local conds = require("luasnip.extras.expand_conditions")
			  -- local postfix = require("luasnip.extras.postfix").postfix
			  -- local types = require("luasnip.util.types")
			  -- local parse = require("luasnip.util.parser").parse_snippet
			  -- local ms = ls.multi_snippet

			  -- require("luasnip").config.setup({
				 --  store_selection_keys="<Tab>"
			  -- })
			  require("luasnip.loaders.from_lua").load({
				  paths = { "./lua/plugins/snippets" }
			  })
      end,
    },
  },
}
