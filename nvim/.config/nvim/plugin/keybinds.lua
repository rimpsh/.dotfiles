vim.g.loaded_matchparen = 1
vim.g.mapleader = " "

-- navigation
vim.api.nvim_set_keymap('n', '<leader>h', ':wincmd h<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>j', ':wincmd j<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>k', ':wincmd k<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>l', ':wincmd l<CR>', { noremap = true })

-- git
vim.api.nvim_set_keymap('n', '<leader>ga', ':Git fetch --all<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>grum', ':Git rebase upstream/master<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>grom', ':Git rebase origin/master<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gj', ':diffget //3<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gf', ':diffget //2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gs', ':G<CR>', { noremap = true })

-- resize
vim.api.nvim_set_keymap('n', '<leader>+', ':vertical resize +5<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>-', ':vertical resize -5<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>rp', ':resize 100<CR>', { noremap = true })

-- hot stuff
vim.api.nvim_set_keymap('v', '<leader>p', '"_dp', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>Y', 'gg"+yG', { noremap = true })

-- others
vim.api.nvim_set_keymap('n', '<leader>ghw', ':h <C-R>=expand("<cword>")<CR><CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':NeoTreeShowToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeShow<CR>', { noremap = true })

-- lsp
vim.api.nvim_set_keymap('n', '<leader>vrn', ':lua vim.lsp.buf.rename()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { noremap = true })

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
vim.api.nvim_set_keymap('n', '<leader>vsd', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>vi', ':lua vim.lsp.buf.implementation()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>vsh', ':lua vim.lsp.buf.signature_help()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>vca', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>vll', ':lua vim.lsp.diagnostic.set_loclist()<CR>', { noremap = true })

-- trouble
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", {silent = true, noremap = true})

-- refactor
vim.api.nvim_set_keymap("n", "<leader>rp", ":lua require('refactoring').debug.printf({below = false})<CR>", { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>rv", ":lua require('refactoring').debug.print_var({})<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>rc", ":lua require('refactoring').debug.cleanup({})<CR>", { noremap = true })
