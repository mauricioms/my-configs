set encoding=utf-8

set noignorecase
set smartcase

set nowrap

set nobackup
set nowritebackup
set noswapfile

set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

autocmd BufRead,BufNewFile *.cpp setlocal shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.cpp set formatprg=clang-format
autocmd BufRead,BufNewFile *.c setlocal shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.csv   set filetype=csv_semicolon

set encoding=utf-8
set hidden
set ignorecase

set scrolloff=10
set number

set splitbelow splitright

set lazyredraw  
set ttyfast

"set hlsearch
set incsearch
"set showmatch

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set listchars=space:•,tab:→\ \|,nbsp:␣,trail:•,eol:⏎,extends:»,precedes:« 

" Definido Cores
colorscheme molokai

set cursorline
autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg

"set cursorcolumn
"autocmd InsertEnter * highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
"autocmd InsertLeave * highlight CursorColumn ctermfg=Black ctermbg=Yellow cterm=bold guifg=Black guibg=yellow gui=NONE

set ruler

set history=1000

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'mechatroner/rainbow_csv'
Plugin 'azabiong/vim-highlighter'

call vundle#end()
filetype plugin indent on

syntax on
hi Visual term=reverse cterm=reverse guibg=Grey

let g:airline_theme='angr'

"nnoremap <C-f> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabNext<CR>

let NERDTreeMapOpenInTab='<C-o>'

let &t_EI = "\<Esc>[1 q"
let &t_SR = "\<Esc>[3 q"
let &t_SI = "\<Esc>[5 q"

