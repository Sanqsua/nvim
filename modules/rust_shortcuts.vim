" note that if you are using Plug mapping you should not use `nnoremap` mappings.
" autocmd FileType rust 
autocmd FileType rust nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
autocmd FileType rust nmap <silent>K <Plug>(lcn-hover)
autocmd FileType rust nmap <silent> gd <Plug>(lcn-definition) :sp <return> <C-o>
autocmd FileType rust nmap <silent> <F2> <Plug>(lcn-rename)

" Function
autocmd FileType rust nnoremap üfn ofn<space>@name@(@parameters@)@return@{}<left><return><Esc>O@your_code@<Esc>kI

" STRUCTS
" create struct
autocmd FileType rust nnoremap ücs ostruct<space>@name@{}<left><return><Esc>O@yourcode@<Esc>kI

" structs impl
autocmd FileType rust nnoremap üis oimpl@generic@<space>@name_and_configs@{}<left><return><Esc>O@your_code@<Esc>kI

" struct body
autocmd FileType rust nnoremap üsb o@name@{}<left><return><Esc>O@your_code@<Esc>kI

"MACRO
" macro attribute
autocmd FileType rust nnoremap üam o#[@macro@]<Esc>I


" LOOPS
" loop: for;
autocmd FileType rust nnoremap üfl ofor<space>@object@<space>in<space>@range@{}<left><return><Esc>O@your_code@<Esc>kI

" DECLARE
" Normal
" variable or const initialize
autocmd FileType rust nnoremap üiv olet<space>@type_or_so@<space>=<space>@your_code@;<Esc>I
autocmd FileType rust nnoremap üic oconst<space>@name@<space>:@datatype@=<space>@your_code@;<Esc>I
