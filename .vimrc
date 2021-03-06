
" ===========================  plugin  ===============================
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'skwp/vim-easymotion'
Plug 'morhetz/gruvbox'
Plug 'ycm-core/YouCompleteMe'
Plug 'Raimondi/delimitMate'
call plug#end()

" ===========================  keymap =================================
map <C-n> :NERDTreeToggle<CR>
" 窗口移动
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
" INSERT下移动光标
inoremap <M-h> <LEFT>
inoremap <M-j> <DOWN>
inoremap <M-k> <UP>
inoremap <M-l> <RIGHT>

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
" 缩进设置为4个空格
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" quick run
map <F5> :call CompileRun()<CR>
func! CompileRun()
    exec "w"
    if &filetype == 'go'
        exec "!time go run %"
    elseif &filetype == 'python'
        exec "!time python3 %"    
    endif
endfunc
