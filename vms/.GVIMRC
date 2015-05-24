scriptencoding utf-8
" ^^ Please leave the above line at the start of the file.

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


if has("gui_running")
  if has ("unix")
    set guifont=Courier\ 14
    set lines=48 columns=80
  elseif has ("vms")
    set guifont=-dec-terminal-medium-r-normal-*-14-*-*-*-c-*-iso8859-1 
  endif
endif
" }

" highlighting {
syntax on
highlight Normal guibg=#ffffe0
highlight NonText guibg=#ffffe0
set background=light
highlight Constant guifg=purple
highlight Include guifg=red
highlight Macro guifg=red
highlight PreProc guifg=red
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
if matchstr(getline(1), "Perforce Change Specification") != ""
  :setlocal spell spelllang=en_us
  :24
endif
" }

set guioptions=aimr


" make VIM play nice with VMS path structure {
if has("vms")
    "{{{ vms vars
    let home="~"
    let vimdir="~/_vim"
    set runtimepath=$VIMRUNTIME,~/_vim
    set diffexpr=VmsDiff()
    function! VmsDiff()
        let opt=""
        if &diffopt =~ "icase"
            let opt = opt . "-i "
        endif
        if &diffopt =~ "iwhite"
            let opt = opt . "-b "
        endif
        silent execute "!gdiff -a " . opt . v:fname_in . " " . v:fname_new . " > " . v:fname_out
    endfunction
    "}}} vms vars
endif
" }
