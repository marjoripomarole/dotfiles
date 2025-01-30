syntax enable
filetype plugin indent on

set nu              " line numbering on
set relativenumber
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
set shiftwidth=4
set tabstop=4
set softtabstop=4

set nobackup
set nowritebackup
set noswapfile

call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'ludovicchabant/vim-gutentags'
Plug 'overcache/NeoSolarized'
Plug 'preservim/NERDTree'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'ziglang/zig.vim'
call plug#end()

colorscheme NeoSolarized

let g:ale_fixers = {
 \ '*': ['remove_trailing_lines', 'trim_whitespace'],
 \ 'javascript': ['eslint'],
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.egg-info$']

let g:rustfmt_autosave = 1
