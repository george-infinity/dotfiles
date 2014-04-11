colorscheme jellybeans
set number
set expandtab
set tabstop=4
set smartindent
set shiftwidth=4
if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
set cursorline
set mouse=a

map - <C-W><
map + <C-W>>

map ; 5j
map , 5k

nnoremap j gj
nnoremap k gk

function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction

inoremap <S-Tab> <C-R>=Tab_Or_Complete()<CR>

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
