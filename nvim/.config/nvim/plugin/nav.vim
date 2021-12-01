" ThePrimeagen is the quickfix-list god
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <C-l> :call ToggleQFList(0)<CR>

" i think im the quickfix toggle god
function! ToggleQFList(global)
    if a:global == 1
        if get(getqflist({'winid' : 0}),'winid',0)
            cclose
        else
            copen
        endif
    elseif a:global == 0
        if get(getloclist(0, {'winid':0}), 'winid', 0)
            lclose
        else
            lopen
        endif
    endif
endfunction
