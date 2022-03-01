call plug#begin('~/.config/nvim/plugged')
" Neovim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'

"treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/playground'

" nvim tree file explorer
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'MunifTanjim/nui.nvim'

" lsp trouble
Plug 'folke/trouble.nvim'

" other
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'gpanders/editorconfig.nvim'
Plug 'folke/todo-comments.nvim'

" vsnip
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" notes
Plug 'nvim-neorg/neorg'

" refactor
Plug 'ThePrimeagen/refactoring.nvim'

" looks
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'Pocco81/TrueZen.nvim'
Plug 'hoob3rt/lualine.nvim'
call plug#end()

" add some lua shit
lua require("unzippants")

" dark color theme
set background=dark
colorscheme tokyonight

if executable('rg')
    let g:rg_derive_root='true'
endif

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

augroup THE_PRIMEAGEN
    autocmd!
    " trim whitespace
    autocmd BufWritePre * %s/\s\+$//e
augroup END
