syntax on

" make sure vim uses file-specific indentions
filetype on
filetype plugin indent on

" Easy install of plugins for vim
execute pathogen#infect()

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

" Ctrl-p
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/dist/*,*/bower_components/*,*/node_modules/*,*.pyc,*/static/*,*/storage/*

set nobackup
set nowritebackup
set noswapfile

" autotags
let g:autotagTagsFile="tags"

""" Python specific configs

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix
