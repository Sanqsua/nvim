"--------------------------------------------------------------------------------------------------- 
"shortcuts in normal mode
"---------------------------------------------------------------------------------------------------

"open nettree in current directory
nnoremap <Leader>d ( :25vs . <return> )

"substitute
nnoremap <Leader>s  :%s//gc<Left><Left><Left>

"find file
nnoremap <Leader>ff :find 

nnoremap <Leader>fs :w
"source this file
nnoremap <Leader>f% (:source % <return>)

"change directory to current file
nnoremap <Leader>cd	:cd %:h <return> 

nnoremap <Leader>g :grep! 
"cw
nnoremap <Leader>cw :cw <return>

"/FZF stuff
nnoremap <Leader>fz :Files<Return>
nnoremap <Leader>fz :Files<Return>
"--------------------------------------------------------------------------------------------------- 
"shortcuts in insert mode
"---------------------------------------------------------------------------------------------------

"capslock as escape
au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

inoremap <M-a> <C-o>A

"remap german ae oe ue keys
inoremap ä ()<Left>
inoremap ö {}<Left><Return><C-o>O
inoremap ü []<Left>
inoremap Ö /
inoremap Ä \
inoremap Ü <C-o>A;

"--------------------------------------------------------------------------------------------------- 
"shortcuts in terminal mode
"---------------------------------------------------------------------------------------------------

"switch terminal windows
tnoremap <C-w> <C-\><C-n><C-w> 

"--------------------------------------------------------------------------------------------------- 
"shortcuts in command mode
"---------------------------------------------------------------------------------------------------
cnoremap Ö /
cnoremap Ä \
