syntax on

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

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Easy install of plugins for vim
execute pathogen#infect()

" Ctrl-p
set runtimepath^=~/.vim/bundle/ctrlp.vim
