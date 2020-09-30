let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_brosw_split = 4
"let g:netrw_winsize = 10

function! NetrwMappings()
	" Hack fix to make ctrl-l work properly
"	noremap <silent> <C-f> :call ToggleNetrw()<CR>
	"noremap <buffer> <C-l> <C-w>l
	"noremap <buffer> <A-l> <C-w>l
endfunction

augroup netrw_mappings
	"autocmd!
"	autocmd filetype netrw call NetrwMappings()
augroup END

function! ToggleNetrw()
	if g:NetrwIsOpen
		let i = bufnr("$")
		while (i >= 1)
			if (getbufvar(i, "&filetype") == "netrw")
				silent exe "bwipeout " . i
			endif
			let i-=1
		endwhile
		let g:NetrwIsOpen=0
	else
		let g:NetrwIsOpen=1
		silent Lexplore
	endif
endfunction

function! NetrwOnBufferOpen()
	if exists('b:noNetrw')
		return
	endif
	call ToggleNetrw()
endfun

augroup ProjectDrawer
	autocmd!
	" Don't open Netrw
	"autocmd VimEnter * :call NetrwOnBufferOpen()
augroup END

autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif

let g:NetrwIsOpen=0
