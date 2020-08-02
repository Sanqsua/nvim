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
Plug 'junegunn/fzf' 
call plug#end()


"--------------------------------------------------------------------------------------------------
"general things
"---------------------------------------------------------------------------------------------------
colorscheme ron
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


"--------------------------------------------------------------------------------------------------- 
"shortcuts in normal mode
"---------------------------------------------------------------------------------------------------

"open nettree in current directory
nnoremap <Leader>d ( :25vs . <return> )

"substitute
nnoremap <Leader>s  :%s//gc<Left><Left><Left>


"find file
nnoremap <Leader>ff :find 

"source this file
nnoremap <Leader>fs (:source % <return>)

"change directory to current file
nnoremap <Leader>cd	:cd %:h <return> 

nnoremap <Leader>g :grep! 
"cw
nnoremap <Leader>w :cw <return>

"ctags if needed


nnoremap <Leader>ct <C-]>


nnoremap <Leader>ö :FZF --preview<return> 
nnoremap <Leader>ä :term<return>:vsp<return>

"--------------------------------------------------------------------------------------------------- 
"shortcuts in insert mode
"---------------------------------------------------------------------------------------------------
"f d for esc
inoremap qq <Esc>

inoremap <M-a> <C-o>A

inoremap ä ()<Left>
inoremap ö {}<Left><Return><C-o>O
inoremap ü []<Left>
inoremap Ö \

"--------------------------------------------------------------------------------------------------- 
"shortcuts in terminal mode
"---------------------------------------------------------------------------------------------------
tnoremap <C-w> <C-\><C-n><C-w> 

"--------------------------------------------------------------------------------------------------- 
" config for plugins
"--------------------------------------- ------------------------------------------------------------
let g:fzf_preview_window = 'right:60%'

