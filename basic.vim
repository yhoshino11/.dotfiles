syntax on

color Dracula

let mapleader = ','

set foldenable
autocmd FileType ruby   setlocal foldmethod=syntax
autocmd FileType python setlocal foldmethod=indent
nnoremap <Space> za

set encoding=utf-8
scriptencoding utf-8

set bs=indent,eol,start

set noautoindent
set nosmartindent

set nobackup
set noswapfile

set clipboard=unnamed

set history=100

set ruler
set nonumber
set relativenumber

set display=uhex

set scrolloff=26

set virtualedit=block

set autoread

set shortmess+=I
set title

set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab

set ignorecase
set wrapscan

set numberwidth=2
set nowrap

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

augroup file_type
  autocmd!
  autocmd BufNewFile,BufRead Gemfile     setlocal filetype=ruby
  autocmd BufNewFile,BufRead Vagrantfile setlocal filetype=ruby
  autocmd BufNewFile,BufRead Guardfile   setlocal filetype=ruby
  autocmd BufNewFile,BufRead .Brewfile   setlocal filetype=ruby
  autocmd BufNewFile,BufRead *.md        setlocal filetype=markdown
augroup END

nmap - dd
nmap t viw

nmap <Leader><Leader>         :w<CR>
nmap <Leader><Leader><Leader> :wq<CR>

cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<CR>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

nnoremap <Leader>sv :source $MYVIMRC<CR>
