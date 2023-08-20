-- 鼠标
vim.o.mouse = "a"
-- 显示行号
vim.o.number = true
-- 高亮说在行
vim.wo.cursorline = true
-- ruler
vim.wo.colorcolumn = "120"
-- 保持虚拟行的配置
vim.o.breakindent = true
-- tabstop
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 新行对齐当前行，Tab转换为space
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 搜索是大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 边输入边搜索
vim.o.incsearch = true
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 禁止折行
vim.o.wrap = false
vim.wo.wrap = false
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- slipwindow 从下面和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 不可见字符的提示
vim.o.list = true
vim.o.listchars = "space:·"
-- 补全增强
vim.o.wildmenu = true
-- 键盘映射
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("i", "<C-l>", "<Esc>o")

-- 主题
vim.cmd("colorscheme onedark")

