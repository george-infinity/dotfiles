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
set incsearch
set wildmode=longest,list,full
set wildmenu
set autochdir
set clipboard=unnamed

" vim-plug
call plug#begin()
" Clone git repositories over ssh
let g:plug_url_format = 'ssh://git@github.com/%s.git'
" Plugins
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
call plug#end()

" Key mappings
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-t> :TagbarToggle<CR>
nmap - <C-w><
nmap = <C-w>>

" Disable Ex-mode
noremap Q <nop>

" Autoload NERDTree
autocmd vimenter * :NERDTreeToggle
if argc() > 0
    if isdirectory(argv(0))
        bd
        autocmd VimEnter * wincmd h
        let cd_cmd = "cd " . argv(0)
        execute cd_cmd
    else
        " Move the focus to the right window if we're editing a file/dir
        autocmd VimEnter * wincmd l
    endif
endif

" Exit if NERDTree is last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
