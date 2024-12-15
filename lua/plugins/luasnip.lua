return {
  "L3MON4D3/LuaSnip",
  lazy = false,
  build = "make install_jsregexp",
  config = function(plugin, opts)
    require("astronvim.plugins.configs.luasnip")(plugin, opts)

    require("luasnip.loaders.from_vscode").lazy_load({
      paths = { "./lua/plugins/snippets" },
    })
  end
}
