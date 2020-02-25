nnoremap <leader>c :call CenterToggle()<cr>

if exists("g:set_blank_width")
    let g:blank_width = g:set_blank_width
else
    let g:blank_width = 30
endif

function! CenterToggle()
    if !exists("t:Centerenabled")
        let t:Centerenabled = 1
    endif
    let window_count = winnr('$')
    if t:Centerenabled
        if window_count > 1
            only
        endif
        exe "leftabove". g:blank_width. "vnew"
        wincmd l
        exe g:blank_width. "vnew"
        wincmd h
        set wfw
        let t:Centerenabled = 0
    else
        only
        set nowfw
        echom 'Center Deavtivate'
        let t:Centerenabled = 1
    endif
endfunction
