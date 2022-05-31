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
