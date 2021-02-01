runtime! archlinux.vim
syntax on

set encoding=utf-8
set autochdir
set clipboard=unnamedplus
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

Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'preservim/nerdtree'
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'google/vim-maktaba'
Plug 'tweekmonster/django-plus.vim'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sheerun/vim-polyglot'
Plug 'phanviet/vim-monokai-pro' 
Plug 'flazz/vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme dracula

augroup autoformat_settings
    autocmd FileType bzl AutoFormatBuffer buildifier
    autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
    autocmd FileType dart AutoFormatBuffer dartfmt
    autocmd FileType go AutoFormatBuffer gofmt
    autocmd FileType gn AutoFormatBuffer gn
    autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
    autocmd FileType java AutoFormatBuffer google-java-format
    autocmd FileType python AutoFormatBuffer yapf
      " Alternative: autocmd FileType python AutoFormatBuffer autopep8
    autocmd FileType rust AutoFormatBuffer rustfmt
    autocmd FileType vue AutoFormatBuffer prettier
augroup END

let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2
nnoremap <leader>prr :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
autocmd vimenter * NERDTree
