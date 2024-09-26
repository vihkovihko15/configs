set laststatus=1
set wrap
filetype plugin on
set omnifunc=syntaxcomplete#Complete
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif



set clipboard=unnamed

" Don't forget to start deoplete let g:deoplete#enable_at_startup = 1 " Less spam let g:deoplete#auto_complete_start_length = 2
" Use smartcase
let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'
let g:deoplete#enable_smart_case = 1


" Setup completion sources
let g:deoplete#sources = {}

" IMPORTANT: PLEASE INSTALL JAVACOMPLETE2  AND ULTISNIPS OR DONT ADD THIS LINE!
" =====================================

let g:deoplete#sources.java = ['jc', 'javacomplete2', 'file', 'buffer', 'ultisnips']

" =====================================

"new in vim 7.4.1042
let g:word_count=wordcount().words
function WordCount()
    if has_key(wordcount(),'visual_words')
        let g:word_count=wordcount().visual_words."/".wordcount().words " count selected words
    else
        let g:word_count=wordcount().cursor_words."/".wordcount().words " or shows words 'so far'
    endif
    return g:word_count
endfunction
set statusline+=\ w:%{WordCount()},
set laststatus=2 " show the statusline




