"turn off compatible mode (vi mode)
set nocompatible

"vundle and plugins
"-------------------------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Townk/vim-autoclose'

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
