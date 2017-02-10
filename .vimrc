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
Plugin 'vim-scripts/taglist.vim'

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

"Taglist
"keymap for toggling Taglist
map <C-M> :TlistToggle<CR>
"taglist appears on the right side instead of left
let Tlist_Use_Right_Window = 1
"sort tags by name
let Tlist_Sort_Type = "name"
"disable fold column
let Tlist_Enable_Fold_Column = 0
"enable compact format
let Tlist_Compact_Format = 1
"set default window width
let Tlist_WinWidth = 40
"close vim if taglist is the only window left
let Tlist_Exit_OnlyWindow = 1
"disable line numbers in taglist
autocmd FileType taglist set norelativenumber

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

"relative line numbers with current line printed at 0
set number relativenumber

"set searches to be case insensitive by default
set ignorecase

"enable mouse
set mouse=a

"enable backspace
set backspace=indent,eol,start

"keymaps for split navigation
nnoremap <C-Left> <C-W><C-H>
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>

"keymaps for buffer navigation
map <C-H> :bp<CR>
map <C-J> :bn<CR>
