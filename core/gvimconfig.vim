scriptencoding utf-8
" ^^ Please leave the above line at the start of the file.
echo "Loaded core\/gvimconfig.vim"

set background=light
highlight Normal guibg=#ffffe0
highlight NonText guibg=#ffffe0
highlight Constant guifg=purple
highlight Include guifg=red
highlight Macro guifg=red
highlight PreProc guifg=red

if has("gui_running")
  if has ("unix")
    set guifont=Courier\ 14
    set lines=48 columns=80
  elseif has ("vms")
    set guifont=-dec-terminal-medium-r-normal-*-14-*-*-*-c-*-iso8859-1 
  endif
endif
" }

set guioptions=aimr
