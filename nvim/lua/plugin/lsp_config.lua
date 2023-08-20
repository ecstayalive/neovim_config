local lspconfig = require('lspconfig')
local function on_attach(client, bufnr)
    local bufopts = {noremap=true, silent=true, buffer=bufnr}
    vim.keymap.set('n', '<C-o>', function() builtin.lsp_document_symbols{symbol_width = 0.8} end, bufopts) -- 打开当前文件的符号
    vim.keymap.set('n', 'gd', function() builtin.lsp_definitions{fname_width = 0.4} end, bufopts) -- 跳转定义
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts) -- 模拟鼠标悬停
    vim.keymap.set('n', 'gr', function() builtin.lsp_references{fname_width = 0.4} end, bufopts) -- 查找引用
    vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, bufopts) -- 重命名
end
lspconfig.clangd.setup{on_attach = on_attach}
