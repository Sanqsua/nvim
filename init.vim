"THIS CONFIGURATION IS FOR GERMAN KEYBOARD LAYOUTS
"---------------------------------------------------------------------------------------------------
"vimplugins (vimplug) --------------------------------------------------------------------------------------------------- 

call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'autozimu/LanguageClient-neovim', {
     \ 'branch': 'next',
     \ 'do': 'bash install.sh',
     \ }
 Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
 call plug#end()
 

"--------------------------------------------------------------------------------------------------
"general things
"---------------------------------------------------------------------------------------------------
source ~/.config/nvim/modules/general_settings.vim

"--------------------------------------------------------------------------------------------------- 
"shortcuts and mappings
"---------------------------------------------------------------------------------------------------
source ~/.config/nvim/modules/shortcuts.vim

"--------------------------------------------------------------------------------------------------- 
" config for plugins
"--------------------------------------- ------------------------------------------------------------
let g:fzf_preview_window = 'right:60%'

set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ }
" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)
