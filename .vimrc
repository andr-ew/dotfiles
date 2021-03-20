syntax enable
hi Comment ctermfg=130
hi Constant ctermfg=130
hi Statement ctermfg=2
hi luaTable ctermfg=2
hi LineNr ctermfg=12
hi Identifier ctermfg=6
hi Function term=underline ctermfg=6 guifg=DarkCyan
hi luaFunc term=underline ctermfg=6 guifg=DarkCyan
hi Statement term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi Conditional term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi Repeat term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi Label term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi Operator term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi Keyword term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi Exception term=underline ctermfg=2 gui=bold guifg=SeaGreen

set number
set tabstop=4
set shiftwidth=4
set expandtab
set nohlsearch

"mapping       
nmap E $
nmap B 0w
nmap J 0jjjjjj
nmap K 0kkkkkk
map q gt
nmap ql gt
nmap qh gT
imap <C-H> <Left>
imap <C-J> <Down>
imap <C-K> <Up>
imap <C-L> <Right>

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
