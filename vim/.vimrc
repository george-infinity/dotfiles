" Options
syntax enable
colorscheme monokai
set number
set expandtab
set tabstop=4
set smartindent
set shiftwidth=4
set backspace=2
set laststatus=2

" vim-plug
call plug#begin()
" Clone git repositories over ssh
let g:plug_url_format = 'ssh://git@github.com/%s.git'
" Plugins
Plug 'scrooloose/nerdtree'
call plug#end()

" Key mappings
nmap <C-n> :NERDTree<CR>
nmap - <C-w><
nmap = <C-w>>

" Disable Ex-mode
noremap Q <nop>

" Autoload NERDTree
autocmd vimenter * :NERDTreeToggle
if argc() > 0
    " Move the focus to the right window if we're editing a file
    autocmd VimEnter * wincmd l
endif
