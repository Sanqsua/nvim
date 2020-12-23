
"---------------------------------------------------------------------------------------------------
"leaderkey (space)
"---------------------------------------------------------------------------------------------------

let mapleader =" "

"--------------------------------------------------------------------------------------------------- 
"shortcuts for file searching /navigation
"---------------------------------------------------------------------------------------------------

"open nettree in current directory
nnoremap <Leader>d ( :vs . <return> )

"find file
nnoremap <Leader>ff :find 

nnoremap <Leader>fs :w<return>
"source this file
nnoremap <Leader>f5 (:source % <return>)
nnoremap <Leader>fr (:e! % <return>)

"change directory to current file
nnoremap <Leader>cd	:cd %:h <return> 


nnoremap <Leader>g :grep! 
nnoremap <Leader>cw :cw <return> 

"/FZF stuff 
nnoremap <Leader>fz :Files<Return> 
nnoremap <Leader>ct :!ctags -R .  
nnoremap <Leader>cg <C-]> 

"tab to navigate tabs
"nnoremap <Tab> :tabNext<return>
"nnoremap <S-Tab> :tabprevious<return>

nnoremap ö /
nnoremap ä \

"-------------------------------------------------------------------------------------------------- 
"shortcuts for text editing
"---------------------------------------------------------------------------------------------------

"substitute
nnoremap <Leader>s  :%s//gc<Left><Left><Left>
" file format
nnoremap <Leader>fmt <Esc>gg=G<C-o>

"remap german ae oe ue keys
inoremap Ä ()<Left>
inoremap Ö {}<Left>
inoremap Ü []<Left>
inoremap Ü []<Left>
inoremap ö /
inoremap ä \
inoremap ü <C-o>A;
inoremap jj <Esc>
inoremap <M-a> <C-o>A

cnoremap ö  /
cnoremap ä  \


"--------------------------------------------------------------------------------------------------- 
"shortcuts for terminal mode
"---------------------------------------------------------------------------------------------------

"switch terminal windows
tnoremap <C-w> <C-\><C-n><C-w> 
" create terminal
nnoremap <Leader>tvs :vs+te <Return>i
nnoremap <Leader>tt :tabnew+te <Return>i
tnoremap ö  /
tnoremap ä  \

