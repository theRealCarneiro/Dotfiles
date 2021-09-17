let g:fern#drawer_width = 30
let g:fern#default_hidden = 1
let g:fern#hide_cursor = 1
let g:fern#disable_drawer_smart_quit = 0

noremap <silent> <C-f> :Fern %:h -drawer -toggle <CR>

function! s:init_fern() abort
  nmap <buffer> H <Plug>(fern-action-open:split)
  nmap <buffer> V <Plug>(fern-action-open:vsplit)
  nmap <buffer> R <Plug>(fern-action-rename)
	nmap <buffer> M <Plug>(fern-action-move)
	nmap <buffer> C <Plug>(fern-action-copy)
	nmap <buffer> N <Plug>(fern-action-new-path)
	nmap <buffer> T <Plug>(fern-action-new-file)
	nmap <buffer> D <Plug>(fern-action-new-dir)
	nmap <buffer> S <Plug>(fern-action-hidden-toggle)
	nmap <buffer> dd <Plug>(fern-action-trash)
  nmap <buffer> <leader> <Plug>(fern-action-mark)
endfunction

"autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "fern" || &buftype == 'quickfix' |q|endif

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

let g:fern#renderer = "nerdfont"
