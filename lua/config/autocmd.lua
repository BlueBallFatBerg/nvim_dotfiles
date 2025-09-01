-- 自动跳转到上次编辑的位置
vim.api.nvim_create_autocmd("BufReadPost",{
    command = [[
        if line("'\"") > 0 && line("'\"") <= line("$") |
        exe "normal! g`\"" |
        endif
    ]]
})
