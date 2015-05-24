scriptencoding utf-8
" ^^ Please leave the above line at the start of the file.
echom "Loaded vms/.VIMRC"

source S:[MGRAM.SRC.CONFIG.CORE]VIMCONFIG.VIM

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
