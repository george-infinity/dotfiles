syntax enable

colorscheme jellybeans
set number
set expandtab
set tabstop=4
set smartindent
set shiftwidth=4
set cursorline
set mouse=a
set colorcolumn=80
set backspace=2

map - <C-W><
map + <C-W>>

map ; 5j
map , 5k

map <F6> :setlocal spell! spelllang=en_gb<CR>

nnoremap j gj
nnoremap k gk

nnoremap Q <nop>

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
