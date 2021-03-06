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
set cursorline
set updatetime=250
set ruler

let mapleader = ","

" vim-plug
call plug#begin()
" Plugins
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
call plug#end()

" Key mappings
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-t> :TagbarToggle<CR>

" Leader mappings
nnoremap <leader>pu :call PhpUnit(0)<CR>
nnoremap <leader>pf :call PhpUnit(1)<CR>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>j :GitGutterNextHunk<CR>
nnoremap <leader>k :GitGutterPrevHunk<CR>

" Disable Ex-mode
noremap Q <nop>

" NERDTree settings
" https://github.com/scrooloose/nerdtree/pull/546
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" vim-go settings
let g:go_fmt_command = "goimports"
command G GoInstall

" Autoload NERDTree
" autocmd vimenter * :NERDTreeToggle
" if argc() > 0
"     if isdirectory(argv(0))
"         bd
"         autocmd VimEnter * wincmd h
"         let cd_cmd = "cd " . argv(0)
"         execute cd_cmd
"     else
"         " Move the focus to the right window if we're editing a file/dir
"         autocmd VimEnter * wincmd l
"     endif
" endif

" Runs phpunit
let g:startDir = getcwd()
function PhpUnit(filter)
    let l:fd = getcwd()
    execute 'lcd' . fnameescape(g:startDir)
    if a:filter
        let pu=system('phpunit -c ' . g:startDir . '/test/unit ' . g:startDir . '/test/unit --filter ' . expand('<cword>') . ' ' . expand('%:p'))
    else
        let pu=system('phpunit -c ' . g:startDir . '/test/unit ' . g:startDir . '/test/unit')
    endif
    echo pu
    execute 'lcd' . fnameescape(l:fd)
echo g:startDir
endfunction

" Exit if NERDTree is last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vim-go lightline support
" https://github.com/itchyny/lightline.vim/issues/201
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ], [ 'go' ] ]
      \ },
      \ 'component': {
      \   'go': '%#goStatuslineColor#%{LightlineGo()}',
      \ },
      \ 'component_type': {
      \   'go': 'raw',
      \ },
      \ }

function! LightlineGo()
    return exists('*go#statusline#Show') ? go#statusline#Show() : ''
endfunction
