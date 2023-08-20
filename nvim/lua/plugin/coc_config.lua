vim.cmd('inoremap <expr> <CR> pumvisible() ? "\\<C-Y>" : "\\<CR>"')
vim.cmd('inoremap <expr> <Tab> pumvisible() ? "\\<C-n>" : "\\<Tab>"')

