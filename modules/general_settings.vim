"--------------------------------------------------------------------------------------------------
"general things
"---------------------------------------------------------------------------------------------------
colorscheme murphy
syntax on set encoding=UTF-8
set wildmenu
set wildignore=*/target/*,*/node_modules/*,*.lock 
set smartcase
set shiftwidth=2	"tabswidth = 2
set smarttab		"autoindents if tabs are used previously
set tabstop=2
set nu 
set path=.,,,**
set grepprg=rg\ -S\ --vimgrep 
" to have case insensitive tabbing while in command mode
set smartcase
set ignorecase
let g:netrw_banner = 0
let g:netrw_liststyle = 3 	"treestyle
