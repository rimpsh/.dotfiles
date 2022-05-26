vim.g.loaded_matchparen = 1
vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap;

-- navigation
map('n', '<leader>h', ':wincmd h<CR>', { noremap = true })
map('n', '<leader>j', ':wincmd j<CR>', { noremap = true })
map('n', '<leader>k', ':wincmd k<CR>', { noremap = true })
map('n', '<leader>l', ':wincmd l<CR>', { noremap = true })

-- git
map('n', '<leader>ga', ':Git fetch --all<CR>', { noremap = true })
map('n', '<leader>grum', ':Git rebase upstream/master<CR>', { noremap = true })
map('n', '<leader>grom', ':Git rebase origin/master<CR>', { noremap = true })
map('n', '<leader>gj', ':diffget //3<CR>', { noremap = true })
map('n', '<leader>gf', ':diffget //2<CR>', { noremap = true })
map('n', '<leader>gs', ':G<CR>', { noremap = true })

-- resize
map('n', '<leader>+', ':vertical resize +5<CR>', { noremap = true })
map('n', '<leader>-', ':vertical resize -5<CR>', { noremap = true })
map('n', '<leader>rp', ':resize 100<CR>', { noremap = true })

-- hot stuff
map('v', '<leader>p', '"_dp', { noremap = true })
map('v', '<leader>y', '"+y', { noremap = true }) map('n', '<leader>Y', 'gg"+yG', { noremap = true })

-- others
map('n', '<leader>ghw', ':h <C-R>=expand("<cword>")<CR><CR>', { noremap = true })
map('n', '<C-n>', ':NeoTreeShowToggle<CR>', { noremap = true })
map('n', '<leader>u', ':UndotreeShow<CR>', { noremap = true })

-- lsp
map('n', '<leader>vrn', ':lua vim.lsp.buf.rename()<CR>', { noremap = true })
map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { noremap = true })

-- telescope
map('n', '<leader>ps', ':lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ")})<CR>', { noremap = true })
map('n', '<C-p>', ':lua require("telescope.builtin").git_files()<CR>', { noremap = true })
map('n', '<leader>pf', ':lua require("telescope.builtin").find_files()<CR>', { noremap = true })
map('n', '<leader>pw', ':lua require("telescope.builtin").grep_string { search = vim.fn.expand("<cword>") }<CR>', { noremap = true })
map('n', '<leader>pb', ':lua require("telescope.builtin").buffers()<CR>', { noremap = true })
map('n', '<leader>vh', ':lua require("telescope.builtin").help_tags()<CR>', { noremap = true })
map('n', '<leader>gc', ':lua require("unzippants.telescope").git_branches()<CR>', { noremap = true })
map('n', '<leader>vrr', ':lua require("telescope.builtin").lsp_references()<CR>', { noremap = true })
map('n', '<leader>vd', ':lua require("telescope.builtin").lsp_definitions()<CR>', { noremap = true })
map('n', '<leader>vsd', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', { noremap = true })
map('n', '<leader>vi', ':lua vim.lsp.buf.implementation()<CR>', { noremap = true })
map('n', '<leader>vsh', ':lua vim.lsp.buf.signature_help()<CR>', { noremap = true })
map('n', '<leader>vca', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true })
map('n', '<leader>vll', ':lua vim.lsp.diagnostic.set_loclist()<CR>', { noremap = true })

-- trouble
map("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", {silent = true, noremap = true})
map("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", {silent = true, noremap = true})

-- refactor
map("v", "<Leader>re", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], {noremap = true, silent = true, expr = false})
map("v", "<Leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], {noremap = true, silent = true, expr = false})
map("v", "<Leader>rv", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]], {noremap = true, silent = true, expr = false})
map("v", "<Leader>ri", [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], {noremap = true, silent = true, expr = false})
map("n", "<Leader>ri", [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], {noremap = true, silent = true, expr = false})
map("n", "<leader>rp", ":lua require('refactoring').debug.printf({below = false})<CR>", { noremap = true })
map("v", "<leader>rv", ":lua require('refactoring').debug.print_var({})<CR>", { noremap = true })
map("n", "<leader>rc", ":lua require('refactoring').debug.cleanup({})<CR>", { noremap = true })

-- quickfix
map('n', '<C-k>', ':cnext<CR>zz', { noremap = true });
map('n', '<C-j>', ':cprev<CR>zz', { noremap = true });
map('n', '<Leader>k', ':lnext<CR>zz', { noremap = true });
map('n', '<Leader>j', ':lprev<CR>zz', { noremap = true });
map('n', '<C-q>', "<cmd>lua require('unzippants.quickfix').toggle(1)<CR>", { noremap = true, silent = true });
map('n', '<Leader>q', "<cmd>lua require('unzippants.quickfix').toggle(0)<CR>", { noremap = true, silent = true });
