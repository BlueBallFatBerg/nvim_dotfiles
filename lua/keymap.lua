-- noremap: 防止映射递归调用
-- slient: 
vim.keymap.set("n", "G", "Gzz", { noremap = true, silent = false })
