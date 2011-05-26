" no vi compatible
set nocompatible
" refresh at once when this file is saved
autocmd! bufwritepost _vimrc source % 

" remove all right click menu
source $VIMRUNTIME/delmenu.vim

" auto check file type 
filetype indent plugin on

" encodings
set fileencodings=utf-8,gbk,default,latin1
let $LANG="zh_CN.UTF-8"
set encoding=utf-8 "this is the vim's encoding, nothing with files

if has("gui_running")
  set guifont=Yahei_Mono:h12 "12 is the smallest & best display size
  autocmd GUIEnter * simalt ~x "auto maximize the window
endif

" check syntax
syntax enable

" number line " ruler is enough
"set number

" fold
set foldmethod=indent 
set foldnestmax=3

" show match bracket
set showmatch

" backspace
set backspace=eol,start,indent

" tab
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab

" colorschema
colorscheme oceandeep

" history
set history=100

" mouse click
set mouse=a

" search
set ignorecase
set incsearch
set magic
set hlsearch

" backup
set nobackup
set nowritebackup
"set noswapfile " swapfile is not that useless

" format
set fileformats=unix,dos

" autocomplete
set completeopt=menu,longest 

" ruler
set ruler

" cursor cross
set cursorline
set cursorcolumn "this may cause the omni complete flash

" command-line completion
set wildmenu

" directory
set browsedir=buffer

" wrap
set nowrap

" gui
set guioptions=i " why not one line

" buffer switching
set hidden

" -------- Plugins --------

" NerdTree
let NERDChristmasTree=1

" minibufexpl
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1 

" -------- Indents --------
:let g:PHP_vintage_case_default_indent=1
