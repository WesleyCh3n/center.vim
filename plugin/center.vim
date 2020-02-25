nnoremap <leader>c :call CenterToggle()<cr>

function! CenterToggle()
    if !exists("t:Centerenabled")
        let t:Centerenabled = 1
    endif
    let window_count = winnr('$')
    if t:Centerenabled
        if window_count > 1
            only
        endif
        leftabove 30vnew
        wincmd l
        30vnew
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
