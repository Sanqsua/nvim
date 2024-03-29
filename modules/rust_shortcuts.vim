" note that if you are using Plug mapping you should not use `nnoremap` mappings.
" autocmd FileType rust 
autocmd FileType rust nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
autocmd FileType rust nmap <silent>K <Plug>(lcn-hover)
autocmd FileType rust nmap <silent> gd <Plug>(lcn-definition) 
autocmd FileType rust nmap <silent> <F2> <Plug>(lcn-rename)
autocmd FileType rust nmap <silent> <F3> <Esc>:call LanguageClient#textDocument_codeAction()<return> 
autocmd FileType rust nmap <silent> <F4> <Esc>:call LanguageClient#explainErrorAtPoint()<return>


" Function
autocmd FileType rust inoremap ücf fn<space>@name@(@parameters@)@return@{}<left><return><Esc>O@your_code@<Esc>kI

" STRUCTS
" create struct
autocmd FileType rust inoremap ücs struct<space>@name@{}<left><return><Esc>O@yourcode@<Esc>kI

" structs impl
autocmd FileType rust inoremap üis impl@generic@<space>@name_and_configs@{}<left><return><Esc>O@your_code@<Esc>kI

" struct body
autocmd FileType rust inoremap üsb @name@{}<left><return><Esc>O@your_code@<Esc>kI

"MACRO
" macro attribute
autocmd FileType rust inoremap üam #[@macro@]<Esc>I


" LOOPS
" loop: for;
autocmd FileType rust inoremap üclf ofor<space>@object@<space>in<space>@range@{}<left><return><Esc>O@your_code@<Esc>kI

" DECLARE
" Normal
" variable or const initialize
autocmd FileType rust inoremap üiv olet<space>@type_or_so@<space>=<space>@your_code@;<Esc>I
autocmd FileType rust inoremap üic oconst<space>@name@<space>:@datatype@=<space>@your_code@;<Esc>I
autocmd FileType rust inoremap üic oconst<space>@name@<space>:@datatype@=<space>@your_code@;<Esc>I

