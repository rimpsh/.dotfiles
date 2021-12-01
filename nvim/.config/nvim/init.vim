call plug#begin('~/.config/nvim/plugged')
" Neovim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
"Plug 'tjdevries/lsp_extensions.nvim'

" statusline
Plug 'hoob3rt/lualine.nvim'

"treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/playground'

" Debugger Plugins
Plug 'mfussenegger/nvim-dap'

" nvim tree file explorer
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" lsp trouble and
Plug 'folke/trouble.nvim'

" other
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" looks
Plug 'arcticicestudio/nord-vim'

" null-ls
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

" latex
Plug 'lervag/vimtex'
call plug#end()

" add some lua shit
lua require("unzippants")

" dark color theme
set background=dark
colorscheme nord

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
