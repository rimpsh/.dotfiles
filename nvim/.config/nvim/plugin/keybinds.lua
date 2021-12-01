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
vim.api.nvim_set_keymap('n', '<leader>gf', ':diffget //3<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gj', ':diffget //2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gs', ':G<CR>', { noremap = true })

-- resize
vim.api.nvim_set_keymap('n', '<leader>+', ':vertical resize +5<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>-', ':vertical resize -5<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>rp', ':resize 100<CR>', { noremap = true })

-- hot stuff
vim.api.nvim_set_keymap('v', '<leader>p', '"_dp', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>p', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>Y', 'gg"+yG', { noremap = true })

-- others
vim.api.nvim_set_keymap('n', '<leader>ghw', ':h <C-R>=expand("<cword>")<CR><CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeShow<CR>', { noremap = true })
