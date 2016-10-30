set backspace=indent,eol,start
set ttimeout
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noautoindent

set nu
set nowrap

set guioptions+=b
set columns=120
set lines=50
syntax enable
set background=dark
"colorscheme darkblue
colorscheme tender

set nobackup

behave mswin

highlight TabChars guibg=DarkSlateBlue ctermbg=239
match TabChars /\t/
