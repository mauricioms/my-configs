call plug#begin('~/.config/nvim/site/plugged')

Plug 'junegunn/goyo.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'mechatroner/rainbow_csv'
Plug 'azabiong/vim-highlighter'
Plug 'tanvirtin/monokai.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'neovim/nvim-lspconfig'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

call plug#end()

lua require("toggleterm").setup()

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

set cursorline
autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg

"set cursorcolumn
"autocmd InsertEnter * highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
"autocmd InsertLeave * highlight CursorColumn ctermfg=Black ctermbg=Yellow cterm=bold guifg=Black guibg=yellow gui=NONE

set ruler

set history=1000

set nocompatible
"filetype off
syntax on

" Definido Cores
colorscheme monokai

filetype plugin indent on

hi Visual term=reverse cterm=reverse guibg=Grey

let g:airline_theme='angr'

"nnoremap <C-f> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <C-e> :ToggleTerm direction=vertical size=80<CR>

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabNext<CR>

let NERDTreeMapOpenInTab='<C-o>'

let &t_EI = "\<Esc>[1 q"
let &t_SR = "\<Esc>[3 q"
let &t_SI = "\<Esc>[5 q"

autocmd BufWritePre *.cpp Neoformat
autocmd BufWritePre *.ts Neoformat
autocmd BufWritePre *.rs Neoformat
autocmd BufWritePre *.c Neoformat
autocmd BufWritePre *.html Neoformat
autocmd BufWritePre *.py Neoformat
autocmd BufWritePre *.sql Neoformat
autocmd BufWritePre *.json Neoformat

