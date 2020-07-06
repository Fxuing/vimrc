
" ===========================  plugin  ===============================
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'morhetz/gruvbox'

call plug#end()

" ===========================  keymap =================================
map <C-n> :NERDTreeToggle<CR>

" ===========================  setting  ===============================
"
" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" themes
colorscheme gruvbox
set bg=dark

" Ohter
set encoding=utf-8
set nu
