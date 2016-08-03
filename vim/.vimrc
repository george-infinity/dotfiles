call plug#begin()

" Clone git repositories over ssh
let g:plug_url_format = 'ssh://git@github.com/%s.git'

" Plugins
Plug 'scrooloose/nerdtree'

call plug#end()

" Key mappings
:map <C-n> :NERDTree<CR>
