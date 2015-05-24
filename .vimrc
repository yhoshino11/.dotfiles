" Basic Settings--------------------------------
source $HOME/.dotfiles/basic.vim

" NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/yuhoshino/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/yuhoshino/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Plugins---------------------------------------
" Snippets--------------------------------------
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Shougo/neocomplete.vim'
source $HOME/.dotfiles/plugins/neocomplete.vim

" Visual----------------------------------------
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'flazz/vim-colorschemes'

source $HOME/.dotfiles/plugins/lightline.vim

" File Search-----------------------------------
NeoBundle 'scrooloose/nerdtree'
source $HOME/.dotfiles/plugins/nerdtree.vim

NeoBundle 'rking/ag.vim'
let g:agprg = 'ag --nocolor --nogroup --column'

NeoBundle 'Shougo/unite.vim'
source $HOME/.dotfiles/plugins/unite.vim

NeoBundle 'ctrlpvim/ctrlp.vim'
source $HOME/.dotfiles/plugins/ctrlp.vim

NeoBundle 'majutsushi/tagbar'
source $HOME/.dotfiles/plugins/tagbar.vim

NeoBundle 'szw/vim-tags'
source $HOME/.dotfiles/plugins/tags.vim

NeoBundle 'alpaca-tc/alpaca_tags', {
    \ 'depends'  : ['Shougo/vimproc.vim',  'Shougo/unite.vim'],
    \ 'autoload' : {
    \   'commands'      : ['AlpacaTags',  'AlpacaTagsUpdate',  'AlpacaTagsSet',  'AlpacaTagsBundle',  'AlpacaTagsCleanCache'],
    \   'unite_sources' : ['tags']
    \   }
    \ }
source $HOME/.dotfiles/plugins/alpaca_tags.vim

" Git------------------------------------------
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'sjl/gundo.vim'
source $HOME/.dotfiles/plugins/gundo.vim

NeoBundle 'airblade/vim-gitgutter'
source $HOME/.dotfiles/plugins/gitgutter.vim

NeoBundle 'mattn/gist-vim', {'depends': 'mattn/webapi-vim'}
source $HOME/.dotfiles/plugins/gist.vim

NeoBundle 'gregsexton/gitv'

" Edit-----------------------------------------
NeoBundle 'scrooloose/syntastic'
source $HOME/.dotfiles/plugins/syntastic.vim

NeoBundle 'junegunn/vim-easy-align'
source $HOME/.dotfiles/plugins/easy-align.vim

NeoBundle 'terryma/vim-multiple-cursors'
source $HOME/.dotfiles/plugins/multiple-cursors.vim

NeoBundle 'ntpeters/vim-better-whitespace'
autocmd BufWritePre <buffer> StripWhitespace

NeoBundle 'scrooloose/nerdcommenter'
source $HOME/.dotfiles/plugins/nerdcommenter.vim

NeoBundle 'vim-scripts/vim-auto-save'
source $HOME/.dotfiles/plugins/auto-save.vim

NeoBundle 'Raimondi/delimitMate'

NeoBundle 'AndrewRadev/switch.vim'
source $HOME/.dotfiles/plugins/switch.vim

NeoBundle 'vim-scripts/surround.vim'
source $HOME/.dotfiles/plugins/surround.vim

" Plugin Support-------------------------------
NeoBundle 'Shougo/vimproc.vim', {
       \    'build' : {
       \      'mac' : 'make -f make_mac.mak',
       \      'unix': 'make -f make_unix.mak'
       \    }
       \  }

" Ruby-----------------------------------------
NeoBundle 'tpope/vim-endwise'

NeoBundleLazy 'marcus/rsense', {
      \  'autoload': { 'filetypes': ['ruby'] }
      \ }
source $HOME/.dotfiles/plugins/rsense.vim

NeoBundle 'tpope/vim-bundler'

NeoBundle 'vim-ruby/vim-ruby'

NeoBundle 'tpope/vim-rails'

NeoBundle 'tpope/vim-rake'

NeoBundle 'thinca/vim-ref'
source $HOME/.dotfiles/plugins/ref.vim

NeoBundle 'yuku-t/vim-ref-ri'

NeoBundle 'glidenote/rspec-result-syntax'

NeoBundle 'osyo-manga/vim-monster'
source $HOME/.dotfiles/plugins/monster.vim

NeoBundle 't9md/vim-ruby-xmpfilter'
source $HOME/.dotfiles/plugins/xmpfilter.vim

NeoBundle 'Keithbsmiley/rspec.vim'
" source $HOME/.dotfiles/plugins/rspec.vim

NeoBundleLazy 'thoughtbot/vim-rspec', {
      \   'depends'  : 'tpope/vim-dispatch',
      \   'autoload' : { 'filetypes' : ['ruby'] }
      \ }
source $HOME/.dotfiles/plugins/vim-rspec.vim

NeoBundleLazy 'supermomonga/neocomplete-rsense.vim', {
      \   'depends': ['Shougo/neocomplete.vim', 'marcus/rsense'],
      \   'autoload': { 'filetypes': ['ruby'] }
      \ }

" Python---------------------------------------
NeoBundleLazy "davidhalter/jedi-vim", {
      \ "autoload": {
      \   "filetypes": [ "python", "python3", "djangohtml"],
      \ },
      \ "build": {
      \   "mac": "pip install jedi",
      \   "unix": "pip install jedi",
      \ }}
source $HOME/.dotfiles/plugins/jedi.vim

NeoBundleLazy 'lambdalisue/vim-pyenv', {
      \ 'depends': ['davidhalter/jedi-vim'],
      \ 'autoload': {
      \   'filetypes': [ 'python', 'python3'],
      \ }}

NeoBundleLazy "nvie/vim-flake8", {
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"]
      \ }}

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

set noautoindent
set nosmartindent
