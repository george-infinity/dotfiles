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
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

map - <C-W><
map + <C-W>>

map ; 5j
map , 5k

map <F6> :setlocal spell! spelllang=en_gb<CR>

nnoremap j gj
nnoremap k gk

nnoremap Q <nop>

" Fuzzy finder key maps
" map <C-f> :FufFile<CR>
" map <C-b> :FufBuffer<CR>

" CtrlP key maps
map <C-f> :CtrlP<CR>
map <C-b> :CtrlPBuffer<CR>

map <C-n> :NERDTree<CR>
map <C-h> :browse oldfiles<CR>

function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction

inoremap <S-Tab> <C-R>=Tab_Or_Complete()<CR>

" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
