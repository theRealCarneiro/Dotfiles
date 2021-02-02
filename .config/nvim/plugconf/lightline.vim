let g:airline#extensions#ale#enabled = 1
let g:lightline = { 
      \ 'colorscheme': 'wal',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste', 'gitbranch' ],
      \             [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
