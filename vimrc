set nu              " line numbering on
set autoindent      " autoindent on
set smartindent
set cindent
set modeline        " show what I'm doing
set showmode        " show the mode on the dedicated line (see above)
set nowrap          " no wrapping!
set ignorecase      " search without regards to case
set smartcase
set exrc            " open local config files
set nojoinspaces    " don't add white space when I don't tell you to
set ruler           " which line am I on?
set showmatch       " ensure Dyck language
set incsearch       " incremental searching
set hlsearch

set backspace=indent,eol,start

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set nobackup
set nowritebackup
set noswapfile

let g:ale_fixers = {
 \ '*': ['remove_trailing_lines', 'trim_whitespace'],
 \ 'javascript': ['eslint'],
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'ludovicchabant/vim-gutentags'
Plug 'overcache/NeoSolarized'
Plug 'preservim/NERDTree'
Plug 'vim-syntastic/syntastic'
call plug#end()

set termguicolors
set background=light
colorscheme NeoSolarized
