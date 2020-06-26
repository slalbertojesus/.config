runtime! archlinux.vim
syntax on

set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set scrolloff=8

call plug#begin('~/.vim/plugged')

Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sheerun/vim-polyglot'
Plug 'phanviet/vim-monokai-pro' 
Plug 'flazz/vim-colorschemes'
Plug '/home/mpaulson/personal/vim-be-good'

call plug#end()

colorscheme dracula
