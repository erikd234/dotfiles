# USED ALOT
require("erikconfig")
vim.api.nvim_create_autocmd( {"BufWritePost",
    "FileWritePost"}, {
    pattern = {"*.html", "*.css", "*.js", "*.ts", "*.tsx", "*.json"},
    command="!prettier -w %"
})
vim.api.nvim_create_autocmd( {"BufWritePost",
    "FileWritePost"}, {
    pattern = {"*.templ"},
    command="!templ fmt %"
})

vim.api.nvim_exec("set ignorecase", false)

-- Create an autocmd group for JavaScript and TypeScript settings
vim.cmd [[
augroup js_ts_settings
  autocmd!
  autocmd FileType javascript,typescript setlocal tabstop=2 shiftwidth=2 expandtab
augroup END
]]

