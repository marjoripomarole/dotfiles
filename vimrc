
syntax on
filetype plugin on  " for eclim
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
set hlsearch        " meh
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Looks
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"TODO:
    "- Find plugin for searching file easily
    "- Install tmux and set up just like it was before
    "- INSTALL THE COLOR plugin for bash
