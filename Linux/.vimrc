" .vimrc file from Dominik Knoll

" Leader key to space
let mapleader = " "

" activate line numbers
set nu
" set tab to 4 spaces
set ts=4
" set color style
color desert
" set cursor style
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
" search ignore upper- or lowercase  
set ignorecase
set smartcase " ignore it when search with uppercase letters

" shortcut for open terminal on the right side
noremap <Leader>t :botright vertical terminal<CR>

" Enable plugins and load plugin for the detected file type.
" I have no idea how this works
filetype plugin on
" Enable Omnicomplete features
set omnifunc=syntaxcomplete#Complete


