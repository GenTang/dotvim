set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" HTML and CSS plugin
Plugin 'mattn/emmet-vim'

" Scala syntax
Plugin 'derekwyatt/vim-scala'

" Dash app plugins
Plugin 'rizzatti/dash.vim'

" Nerdtree plugin
Plugin 'scrooloose/nerdtree'

" Colors-solarized
Plugin 'altercation/vim-colors-solarized'

" Color schemes
Plugin 'flazz/vim-colorschemes'

" Alignement
Plugin 'godlygeek/tabular'

" Tab autocompletion
Plugin 'ervandew/supertab'

" Google coding style
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

" Python pep8 style
Plugin 'Vimjas/vim-python-pep8-indent'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Set windows size
set lines=29
set columns=100

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" Switch on syntax highlighting.
syntax on

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Set ruler and number
set ruler
set number

" Set colorscheme
colorscheme BlackSea

" Set font
set guifont=Monaco:h11

" Set python syntax
let python_highlight_all = 1
let python_version_2 = 1
let python_highlight_space_errors = 0

" Enable emmet_install just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Set html syntax
autocmd FileType html setlocal ts=2 sw=2 expandtab
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "html,body,head"

" Set javascript syntax
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab

" Set XML syntax
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

"-----------------------------------------------------------------------------
" NERD Tree Plugin Settings
"-----------------------------------------------------------------------------
" Toggle the NERD Tree on an off with F7
nmap <C-N> :NERDTreeToggle<CR>

" ,c to show current file in the tree
nmap <leader>c :NERDTreeFind<CR>

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
                   \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
                   \ '\.embed\.manifest$', '\.embed\.manifest.res$',
                   \ '\.intermediate\.manifest$', '^mt.dep$' ]

