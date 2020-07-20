"---------------------------------------------------------------------------------------------------
"leaderkey (space)
"---------------------------------------------------------------------------------------------------

let mapleader =" "

"---------------------------------------------------------------------------------------------------
"vimplugins (vimplug)
"--------------------------------------------------------------------------------------------------- 
call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


"--------------------------------------------------------------------------------------------------
"general things
"---------------------------------------------------------------------------------------------------
syntax on
set encoding=UTF-8
set wildmenu
set wildignore=*/target/*,*/node_modules/*,*.lock
set autoread
set shiftwidth=2	"tabswidth = 2
set smarttab		"autoindents if tabs are used previously
set tabstop=2
set nu 
set path=.,,,**
set grepprg=rg\ -S\ --vimgrep 
command! -nargs=+ -complete=dir -bar SearchProject execute 'silent! grep!'.<q-args>.' | cwindow'

let g:netrw_banner = 0

let g:netrw_liststyle = 3 	"treestyle


"--------------------------------------------------------------------------------------------------- 
"shortcuts + leader
"---------------------------------------------------------------------------------------------------

"open nettree in current directory
nnoremap <Leader>d ( :25vs . <CR> )

"substitute
nnoremap <Leader>s  :%s//gc<Left><Left><Left>

"f d for esc
inoremap fd <Esc>

"find file
nnoremap <Leader>f :find 

"source this file
nnoremap <Leader>5 (:source % <CR>)

"change directory to current file
nnoremap <Leader>cd	:cd %:h <CR> 

nnoremap <Leader>g :grep! 
"cw
nnoremap <Leader>w :cw <CR>

nnoremap <Leader>ct <C-]>

tnoremap <C-w> <C-\><C-n><C-w> 
