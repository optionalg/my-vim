" refresh at once when this file is saved
autocmd! bufwritepost _vimrc source % 
" no vi compatible
set nocompatible

" auto check file type 
filetype plugin indent on

" encodings
set fileencodings=utf-8,gbk,default,latin1
let $LANG="zh_CN.UTF-8"
set encoding=utf-8 "this is the vim's encoding, nothing with files

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

if has("gui_running")
  set guifont=Yahei_Mono:h12 "12 is the smallest & best display size
  autocmd GUIEnter * simalt ~x "auto maximize the window
endif

" check syntax
syntax enable

" number line
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

" indent
set autoindent
set smartindent
autocmd FileType javascript set nocindent

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
set noswapfile

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
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=R
set guioptions-=L

" buffer switching
set hidden

" set omni complete function
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Plugins

" TagList
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1
let Tlist_Enable_Fold_Column=0

" NerdTree
let NERDChristmasTree=1

" snipmate
"autocmd FileType php set filetype=php.html "makes tlist not work

" minibufexpl
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1 
