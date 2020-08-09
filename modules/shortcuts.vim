"---------------------------------------------------------------------------------------------------
"leaderkey (space)
"---------------------------------------------------------------------------------------------------

let mapleader =" "

"--------------------------------------------------------------------------------------------------- 
"shortcuts for file searching /navigation
"---------------------------------------------------------------------------------------------------

"open nettree in current directory
nnoremap <Leader>d ( :30vs . <return> )

"find file
nnoremap <Leader>ff :find 

nnoremap <Leader>fs :w<return>
"source this file
nnoremap <Leader>f5 (:source % <return>)

"change directory to current file
nnoremap <Leader>cd	:cd %:h <return> 

nnoremap <Leader>g :grep! 
"cw
nnoremap <Leader>cw :cw <return> 

"/FZF stuff 
nnoremap <Leader>fz :Files<Return> 

nnoremap <Leader>ct :!ctags -R .  

nnoremap <Leader>cg <C-]> 

"vertical split scrollbind IMPORTANT
nnoremap <Leader>fvs gg :windo set noscrollbind<return> :vs<return><c-w>w<c-f> :windo set scrollbind<return> <c-w>w

"-------------------------------------------------------------------------------------------------- 
"shortcuts for text editing
"---------------------------------------------------------------------------------------------------

"substitute
nnoremap <Leader>s  :%s//gc<Left><Left><Left>

"remap german ae oe ue keys
inoremap ä ()<Left>
inoremap ö {}<Left><Return><C-o>O
inoremap ü []<Left>
inoremap Ö /
inoremap Ä \
inoremap Ü <C-o>A;

inoremap jj <Esc>
inoremap <M-a> <C-o>A

cnoremap Ö /
cnoremap Ä \

"--------------------------------------------------------------------------------------------------- 
"shortcuts in terminal mode
"---------------------------------------------------------------------------------------------------

"switch terminal windows
tnoremap <C-w> <C-\><C-n><C-w> 
" create terminal
nnoremap <Leader>te :sp+te <Return>i

