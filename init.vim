"THIS CONFIGURATION IS FOR GERMAN KEYBOARD LAYOUTS
"---------------------------------------------------------------------------------------------------
"vimplugins (vimplug)
"--------------------------------------------------------------------------------------------------- 

if !filereadable(system('echo  -n "$HOME/.local/share/nvim/site/autoload/plug.vim"'))
	echo "Downloading junegunn/vim_plug to manage plugins"
	silent !mkdir -p $HOME/.local/share/nvim/site/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > $HOME/.local/share/nvim/site/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

"--------------------------------------------------------------------------------------------------
"vimcommands on startup
"---------------------------------------------------------------------------------------------------
source ~/.config/nvim/modules/vim_startup.vim

"--------------------------------------------------------------------------------------------------
"general things
"---------------------------------------------------------------------------------------------------
source ~/.config/nvim/modules/general_settings.vim

"--------------------------------------------------------------------------------------------------- 
"shortcuts and mappings
"---------------------------------------------------------------------------------------------------
source ~/.config/nvim/modules/shortcuts.vim

"programming languages
inoremap <M-f> <Esc>/@\w\+@<return><Esc>cf@

" rust shortcuts and snipplets
source ~/.config/nvim/modules/rust_shortcuts.vim


"--------------------------------------------------------------------------------------------------- 
" config for plugins
"--------------------------------------- ------------------------------------------------------------

"fzf
let g:fzf_preview_window = 'right:60%'
set hidden

" languageClient-neovim
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ }

" limelight 
" " Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_default_coefficient = 0.7
