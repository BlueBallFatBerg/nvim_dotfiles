vim.opt.tabstop = 2         -- 设置 Tab 键显示为 2 个空格
vim.opt.shiftwidth = 2      -- 设置缩进时使用 2 个空格
vim.opt.expandtab = true    -- 将 Tab 键转换为空格
vim.opt.softtabstop = 2     -- 设置软 Tab 键为 2 个空格
vim.opt.guifont = "Iosevka Nerd Font"  -- display Nerd Font Icon correctly
vim.opt.clipboard = "unnamedplus"      -- 使用系统剪切板


require("config.lazy")
require("config.keymap")
require("config.autocmd")

