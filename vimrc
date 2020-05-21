syntax on

" make sure vim uses file-specific indentions
filetype on
filetype plugin indent on

set nocompatible    " get rid of strict vi compatibility!
set nu              " line numbering on
set autoindent      " autoindent on
set smartindent
set cindent
set noerrorbells    " bye bye bells :)
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
set shortmess=I     " Remove Vim welcome message

set backspace=indent,eol,start

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set background=light
let g:solarized_termcolors=256
colorscheme solarized

set nobackup
set nowritebackup
set noswapfile

" autotags
let g:autotagTagsFile="tags"

" vim-plug

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'preservim/nerdtree'

call plug#end()

let g:ale_fixers = {
 \ '*': ['remove_trailing_lines', 'trim_whitespace'],
 \ 'javascript': ['eslint'],
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1
