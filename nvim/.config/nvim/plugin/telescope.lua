-- telescope
vim.api.nvim_set_keymap('n', '<leader>ps', ':lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ")})<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':lua require("telescope.builtin").git_files()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>pf', ':lua require("telescope.builtin").find_files()<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>pw', ':lua require("telescope.builtin").grep_string { search = vim.fn.expand("<cword>") }<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>pb', ':lua require("telescope.builtin").buffers()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>vh', ':lua require("telescope.builtin").help_tags()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gc', ':lua require("unzippants.telescope").git_branches()<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>vrr', ':lua require("telescope.builtin").lsp_references()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>vd', ':lua require("telescope.builtin").lsp_definitions()<CR>', { noremap = true })
