-- vim.cmd('inoremap <expr> <CR> pumvisible() ? "\\<C-Y>" : "\\<CR>"')
-- vim.cmd('inoremap <expr> <Tab> pumvisible() ? "\\<C-n>" : "\\<Tab>"')
vim.api.nvim_set_keymap("n", "<leader>.", "<Plug>(coc-codeaction)", {})
vim.api.nvim_set_keymap("n", "<leader>l", ":CocCommand eslint.executeAutofix<CR>", {})
vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent = true})
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", {silent = true})
vim.api.nvim_set_keymap("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<F2>", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "<leader>ff", ":CocCommand prettier.formatFile<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>o", ":<C-u>CocList outline<cr>", {noremap = true, silent=true})
vim.api.nvim_set_keymap("n", "<C-t>", ":<C-u>CocList -I symbols<cr>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<F12>", "<Esc><Plug>(coc-definition)i", {silent=true})
vim.api.nvim_set_keymap("i", "<C-Space>", "coc#refresh()", { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<CR>", "coc#pum#visible() ? coc#pum#confirm() : '<C-g>u<CR><c-r>=coc#on_enter()<CR>'", {noremap = true, silent = true, expr = true})
-- vim.keymap.set("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], {noremap = true, silent = true, expr = true, replace_keycodes = false})
vim.api.nvim_set_keymap("i", "<TAB>", "coc#pum#visible() ? coc#pum#next(1) : '<TAB>'", {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<S-TAB>", "coc#pum#visible() ? coc#pum#prev(1) : '<C-h>'", {noremap = true, expr = true})
