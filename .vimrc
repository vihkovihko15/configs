set laststatus=2
set wrap

if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif





" Don't forget to start deoplete let g:deoplete#enable_at_startup = 1 " Less spam let g:deoplete#auto_complete_start_length = 2
" Use smartcase
let g:deoplete#enable_smart_case = 1


" Setup completion sources
let g:deoplete#sources = {}

" IMPORTANT: PLEASE INSTALL JAVACOMPLETE2  AND ULTISNIPS OR DONT ADD THIS LINE!
" =====================================

let g:deoplete#sources.java = ['jc', 'javacomplete2', 'file', 'buffer', 'ultisnips']

" =====================================


