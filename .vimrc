set mouse=a
version 6.0
if &cp | set nocp | endif
map Q gq
let s:cpo_save=&cpo
set cpo&vim
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set clipboard=autoselect
set display=truncate
set history=200
set incsearch
set langnoremap
set nolangremap
set mouse=a
set nrformats=bin,hex
set ruler
set scrolloff=5
set showcmd
set ttimeout
set ttimeoutlen=100
set wildmenu

" Don't use tabs for indentation. Spaces are nicer to work with.
" set expandtab

" vim: set ft=vim :
syntax on


nmap <F8> :TagbarToggle<CR>

hi User1 ctermbg=3 ctermfg=11
hi User2 ctermbg=0 ctermfg=1

let g:word_count=wordcount().words
function WordCount()
    if has_key(wordcount(),'visual_words')
        let g:word_count=wordcount().visual_words."/".wordcount().words " count selected words
    else
        let g:word_count=wordcount().cursor_words."/".wordcount().words " or shows words 'so far'
    endif
    return g:word_count
endfunction
 
set statusline=%1*\<\<\ %F%m%r%h%w\ \>\>%*%2*\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [WC:%{WordCount()}]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

set laststatus=2


" line numbers
set number
"sets line number color but not in hex?
highlight LineNr term=bold cterm=NONE ctermfg=gray ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

set runtimepath^=~/.vim

let g:netrw_bufsettings = 'nonu'
"style for netrw tree, condensed, etc.. 
let g:netrw_liststyle = 3
"remove header for netrw
let g:netrw_banner = 0

