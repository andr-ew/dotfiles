syntax enable
hi Comment ctermfg=130
hi Constant ctermfg=130
hi Statement ctermfg=2
hi Type ctermfg=2
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
hi jsxTagName cterm=bold ctermfg=11
hi jsxPunct term=bold ctermfg=11 
hi jsxTag term=bold ctermfg=11 
hi jsxCloseString term=bold ctermfg=11 
hi jsxAttrib term=bold ctermfg=15
hi jsBraces term=underline ctermfg=2
hi jsxBraces term=underline ctermfg=2
" hi jsBuiltinValues ctermfg=6
" hi Operator ctermfg=15
" hi jsFunctionCall ctermfg=15
" hi Pmenu ctermfg=15 ctermbg=12
hi Pmenu ctermfg=15 ctermbg=6
" hi javaScriptValue ctermfg=130
" hi javaScriptOperator term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi clear jsFuncCall
hi jsIfElseBraces ctermfg=6
hi jsObjectBraces ctermfg=2
hi jsFuncBraces ctermfg=6
hi jsTryCatchBraces ctermfg=6
hi jsClassBraces ctermfg=6
hi jsModuleBraces ctermfg=6
hi jsObjectColon ctermfg=2
hi jsFuncCall ctermfg=15
hi jsBrackets ctermfg=2
hi jsDestructuringBraces ctermfg=2
hi jsRepeatBraces ctermfg=6
hi jsNull ctermfg=130

set number
set tabstop=4
set shiftwidth=4
set expandtab
set nohlsearch
set noswapfile

"most accurate highlighting
autocmd BufEnter * :syntax sync fromstart

if has("patch-7.4.354")
    " Indents word-wrapped lines as much as the 'parent' line
    set breakindent
    " Ensures word-wrap does not split words
    set formatoptions=l
    set lbr
endif

call plug#begin('~/.vim/plugged')
    Plug 'supercollider/scvim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-commentary'
    " Plug 'yuezk/vim-js'
    Plug 'pangloss/vim-javascript'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    Plug 'tpope/vim-obsession'
call plug#end()

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
command W w
command Q q
cabbrev c tabedit
cabbrev x tabclose
command! -nargs=0 Prettier :CocCommand prettier.formatFile

hi htmlItalic cterm=none
