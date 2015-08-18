syntax enable

" colorscheme jellybeans
" set cursorline
" set colorcolumn=80
set number
set expandtab
set tabstop=4
set smartindent
set shiftwidth=4
set mouse=a
set backspace=2
set laststatus=2
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

" Plugin specific settings
let g:bufferline_fname_mod = ':f'

" Functions
function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction

" Recursive mappings
map ; 5j
map , 5k
map <F6> :setlocal spell! spelllang=en_gb<CR>

map - <C-W><
map + <C-W>>

" Normal mappings
nnoremap j gj
nnoremap k gk
nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>

nnoremap Q <nop>

" Fuzzy finder key maps
" nnoremap <C-f> :FufFile<CR>
" nnoremap <C-b> :FufBuffer<CR>

" CtrlP key maps
nnoremap <C-f> :CtrlP<CR>
nnoremap <C-b> :CtrlPBuffer<CR>

" NERDTree maps
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-h> :browse oldfiles<CR>

" Insert mappings
inoremap <S-Tab> <C-R>=Tab_Or_Complete()<CR>

" Autoload
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
