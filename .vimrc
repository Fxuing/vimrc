
" ===========================  plugin  ===============================
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'skwp/vim-easymotion'
Plug 'morhetz/gruvbox'

call plug#end()

" ===========================  keymap =================================
map <C-n> :NERDTreeToggle<CR>
" 窗口移动
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
" INSERT下括号补全
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap " ""<LEFT>
" INSERT下移动光标
inoremap <S-h> <LEFT>
inoremap <S-j> <DOWN>
inoremap <S-k> <UP>
inoremap <S-l> <RIGHT>

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
let mapleader=","
