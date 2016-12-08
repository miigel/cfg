"turn off compatible mode (vi mode)
set nocompatible

"vundle and plugins
"-------------------------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Townk/vim-autoclose'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on
"-------------------------------------------------------------------------------

"color themes (different for vim and gvim)
if has('gui_running')
	color torte
else
	color torte
endif

"stop creating useless backup files that pollute your directory
set nobackup

"tabs to spaces
"set expandtab

"set tab size
set tabstop=4 shiftwidth=4 softtabstop=4

"relative line numbers with current line printed at 0
:set number relativenumber

"set searches to be case insensitive by default
:set ignorecase

"use os clipboard
if has('clipboard') && !has('gui_running')
    if has('unnamed')
        :set clipboard=unnamed
    endif
    if has('unnamedplus')
        :set clipboard=unnamedplus
    endif
endif
