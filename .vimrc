syntax enable
hi Comment ctermfg=130
hi Constant ctermfg=130
hi Statement ctermfg=2
hi LineNr ctermfg=12
set number
set tabstop=4
set shiftwidth=4
set expandtab

"mapping       
nmap E $
nmap B 0w
nmap J 0jjjjjj
nmap K 0kkkkkk

if has("patch-7.4.354")
    " Indents word-wrapped lines as much as the 'parent' line
    set breakindent
    " Ensures word-wrap does not split words
    set formatoptions=l
    set lbr
endif

call plug#begin('~/.vim/plugged')
Plug 'supercollider/scvim'
call plug#end()
