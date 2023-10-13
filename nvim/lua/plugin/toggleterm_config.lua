require("toggleterm").setup{direction='float'}
-- vim.api.nvim_set_keymap("t", "<leadet>t", ":ToggleTerm<CR>", {silent=true})
vim.api.nvim_set_keymap("n", "<leader>t", ":ToggleTerm<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<leader>t", "<Esc>:ToggleTerm<CR>", {silent=true})
