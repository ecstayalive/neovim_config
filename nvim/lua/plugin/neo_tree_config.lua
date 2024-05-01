function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.api.nvim_set_keymap("n", "<C-b>", ":Neotree reveal toggle<CR>", {noremap = true, silent=true})
vim.api.nvim_set_keymap("n", "<leader>a", ":Neotree focus<CR>", {noremap = true, silent=true})
