scriptencoding utf-8
" ^^ Please leave the above line at the start of the file.
echo "Loaded core\/vimconfig.vim"

""""""""""""" Custom stuff """"""""""""" 
" indentation {
set tabstop=2
set shiftwidth=2
set expandtab
set noautoindent
set smartindent
set ignorecase
set smartcase
" }

" general {
set hlsearch
set showmatch
set ruler               " Show the cursor position all the time
set nocompatible        " Use Vim defaults (much better!)
set bs=2                " Allow backspacing over everything in insert mode
filetype on

syntax on
" }

" Turn accidental :W (invalid) into :w {
map :W :w
map :Q :q
" }

" Firefox-style tab navigation {
map <C-Tab> gt
map <C-S-Tab> gT
" }

" Jump to the description section of a p4 changelist {
if matchstr(getline(0), "Perforce Change Specification") != ""
  :setlocal spell spelllang=en_us
  :25
endif
" }
