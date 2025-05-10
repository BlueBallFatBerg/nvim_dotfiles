return {
  {
    dir = "~/.config/nvim/plugin/tt_plugin/",
    name = "tt_plugin",
    config = function()
      local tt_plugin = require("tt_plugin")

      tt_plugin.setup({
        search_dirs = { "~/vaults/markdown/" },
      })

      vim.keymap.set("n", "<space>mu", function()
        tt_plugin.open_url_under_cursor()
      end, { noremap = false, expr = true, desc = "follow link(url) under cursor" })

      vim.keymap.set("n", "<space>mn", function()
        tt_plugin.open_note_under_cursor()
      end, { noremap = false, expr = true, desc = "follow link(note) under cursor" })
    end,
    dev = true,
  }
}
