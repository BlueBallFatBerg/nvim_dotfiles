local is_mac = vim.fn.has("mac") == 1
local nvim_dir = "~/.config/nvim"
local markdown_dir = "~/vaults"

if is_mac == 1 then
  vim.keymap.set({ "n", "i" }, "<D-s>", function()
    vim.cmd("wall")
  end, { desc = "Save all files" })
  vim.keymap.set("n", "<D-a>", "ggVG", { noremap = true, silent = false }, { desc = "Select all" })
end

vim.keymap.set({ "n", "i" }, "<C-s>", function()
  vim.cmd("wall")
end, { desc = "Save all files" })
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = false, desc = "Select all" })
vim.keymap.set("n", "G", "Gzz", { noremap = true, silent = false, desc = "G = G + zz" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = false, desc = "switch to left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = false, desc = "switch to right window" })
-- vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = false }, { desc = "jj = <esc>" })
vim.keymap.set("n", "<leader>ypc", "yypkgccj", { remap = true, silent = false, desc = "yyp k gcc j" })

-- vim.keymap.set('n', '<leader>ff', '<cmd>lua require("fzf-lua").files()<CR>', { noremap = true, silent = true , desc = "find file" })
vim.keymap.set('n', '<leader>fw', '<cmd>lua require("fzf-lua").grep()<CR>', { noremap = true, silent = true, desc = "find file by word" })
-- vim.keymap.set('n', '<leader>fb', '<cmd>lua require("fzf-lua").buffers()<CR>', { noremap = true, silent = true, desc = "find file in buffer" })
vim.keymap.set('n', '<leader>fdnf', '<cmd>lua require("fzf-lua").files({cwd="' .. nvim_dir .. '"})<CR>', { noremap = true, silent = true , desc = "find file in nvim dir" })
vim.keymap.set('n', '<leader>fdnw', '<cmd>lua require("fzf-lua").grep({cwd="' .. nvim_dir .. '"})<CR>', { noremap = true, silent = true , desc = "find file by word in nvim dir" })
vim.keymap.set('n', '<leader>fdmf', '<cmd>lua require("fzf-lua").files({cwd="' .. markdown_dir .. '"})<CR>', { noremap = true, silent = true , desc = "find file in markdown dir" })
vim.keymap.set('n', '<leader>fdmw', '<cmd>lua require("fzf-lua").grep({cwd="' .. markdown_dir .. '"})<CR>', { noremap = true, silent = true , desc = "find file by word in markdown dir" })
