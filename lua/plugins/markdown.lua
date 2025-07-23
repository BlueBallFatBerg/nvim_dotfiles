-- return {
-- 	"iamcco/markdown-preview.nvim",
-- 	enabled = false,
-- 	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
-- 	build = "cd app && yarn install",
-- 	config = function()
-- 		vim.g.mkdp_filetypes = { "markdown" }
-- 		vim.keymap.set('n', '<leader>mm', "<Plug>MarkdownPreview")
-- 	end,
-- 	ft = { "markdown" },
-- }

return {
  'meanderingprogrammer/render-markdown.nvim',
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  ---@module 'render-markdown'
  ---@type render.md.userconfig
  opts = {},
}
