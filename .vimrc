""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


    """""""""""""""""""""""""""""""""""""""""""""""""""""
    " https://github.com/907th/vim-auto-save
    """""""""""""""""""""""""""""""""""""""""""""""""""""

    Plugin '907th/vim-auto-save'
    " Enable AutoSave on startup
    let g:auto_save = 1
    " Silence AutoSave display
    let g:auto_save_silent = 1
    " Save whenever text is changed, or we leave insert mode
    let g:auto_save_events = ["InsertLeave", "TextChanged", "TextChangedI"]


    """""""""""""""""""""""""""""""""""""""""""""""""""""
    " https://github.com/Valloric/YouCompleteMe
    """""""""""""""""""""""""""""""""""""""""""""""""""""

    Plugin 'Valloric/YouCompleteMe'


    """""""""""""""""""""""""""""""""""""""""""""""""""""
    " https://github.com/airblade/vim-gitgutter
    """""""""""""""""""""""""""""""""""""""""""""""""""""

    Plugin 'airblade/vim-gitgutter'


    """""""""""""""""""""""""""""""""""""""""""""""""""""
    " https://github.com/ludovicchabant/vim-gutentags
    """""""""""""""""""""""""""""""""""""""""""""""""""""

    " Automatically keep track of and rebuild tags file for ctags
    Plugin 'ludovicchabant/vim-gutentags'


call vundle#end()            " required
filetype plugin indent on    " required


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Automatically write when running :next, etc.
set autowrite
" Delete inserted 4 spaces with one keystroke
set softtabstop=4
" User smartcase search
set smartcase
" Tell ctags to look for tags upward all the way to the root (/)
set tags=tags;/
