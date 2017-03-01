"turn off compatible mode (vi mode)
set nocompatible

"vundle and plugins
"-------------------------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'miigel/taglist.vim'
Plugin 'ap/vim-buftabline'
Plugin 'craigemery/vim-autotag'
Plugin 'qpkorr/vim-bufkill'

call vundle#end()
filetype plugin indent on
"-------------------------------------------------------------------------------

"NERDtree
"keymap for toggling NERDtree
map <C-N> :call ToggleNERDTree()<CR>
function! ToggleNERDTree()
    if exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
        :NERDTreeClose
    else
        :NERDTree .
    endif
endfunction
"replace the default statusline
autocmd FileType nerdtree setlocal statusline=NERDTree

"Taglist
"keymap for toggling Taglist
map <C-M> :TlistToggle<CR>
"taglist appears on the right side instead of left
let Tlist_Use_Right_Window = 1
"sort tags by name
let Tlist_Sort_Type = "name"
"disable fold column
let Tlist_Enable_Fold_Column = 0
"show only current file's tags
let Tlist_Show_One_File = 1
"set default window width
let Tlist_WinWidth = 40
"disable resizing terminal window
let Tlist_Inc_Winwidth = 0
"close vim if taglist is the only window left
let Tlist_Exit_OnlyWindow = 1
"disable line numbers in taglist
autocmd FileType taglist set norelativenumber
"replace the default statusline
autocmd FileType taglist setlocal statusline=TAGS

"Buftabline
"show buffer number
let g:buftabline_numbers = 1
"show buftabline only when there are 2 or more buffers
let g:buftabline_show = 1

"gvim only
if has('gui_running')
    color torte
endif

"allow switching between buffers without having to save changes in current buffer
set hidden

"status line
set laststatus=2
set statusline=%F%=%c\ %l/%L\ (%p%%)

"stop creating useless backup files that pollute your directory
set nobackup

"set swapdir (linux) and make sure swap files are unique
set directory=~/.vim/swap//

"tabs to spaces
set expandtab

"set tab size
set tabstop=4 shiftwidth=4 softtabstop=4

"highlight/indicate tabs, wrapping and trailing space
set list
set lcs=trail:~,tab:>-,extends:$,precedes:$

"relative line numbers with current line printed at 0
set number relativenumber

"set searches to be case insensitive by default
set ignorecase

"enable mouse
set mouse=a

"enable backspace
set backspace=indent,eol,start

"don't wrap lines
set nowrap

"keymaps for split navigation
nnoremap <C-Left> <C-W><C-H>
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>

"keymaps for buffer navigation
map <C-J> :bp<CR>
map <C-K> :bn<CR>
