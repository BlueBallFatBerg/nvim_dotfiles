local is_mac = vim.fn.has("mac") == 1
local is_linux = vim.fn.has("unix") == 1

-- 设置 Cmd+S (macOS) 或 Ctrl+S (其他系统) 为保存所有文件
if is_mac then
  vim.keymap.set({ "n", "i" }, "<D-s>", function()
    vim.cmd("wall")  -- 保存所有文件
  end, { desc = "Save all files" })
  vim.keymap.set("n", "<D-a>", "ggVG", { noremap = true, silent = false })
else
  vim.keymap.set({ "n", "i" }, "<C-s>", function()
    vim.cmd("wall")  -- 保存所有文件
  end, { desc = "Save all files" })
  vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = false })
end

-- noremap: 防止映射递归调用
-- slient: XXX
vim.keymap.set("n", "G", "Gzz", { noremap = true, silent = false })
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = false })
