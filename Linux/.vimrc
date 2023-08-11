" .vimrc file from Dominik Knoll
" Last changes: 12.08.23

" -- VIEW SETTINGS --

" Enable syntax highlighting
syntax on
" Activate line numbers
set nu
" Set tab to 4 spaces
set ts=4
" Set color style
color desert
" Cursor settings
if &term =~ "xterm\\|rxvt"
  " Use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " Use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " Reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " Use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif

" Set cursor line on the current line number 
set cursorline
" Set cursor line style
hi CursorLine term=bold cterm=bold guibg=Grey40

" -- OTHER OPTIONS --

" Search ignore upper- or lowercase  
set ignorecase
set smartcase " ignore it when search with uppercase letters

" -- SHORTCUT SETTINGS --

" Leader key to space
let mapleader = " "

" Shortcut for open terminal on the right side
noremap <Leader>t :botright vertical terminal<CR>

" Shortcut for formatting the current c, h and py files
autocmd BufNewFile,BufRead *.c,*cpp,*.h,*.hpp noremap<buffer> <Leader>f :!clang-format -i %<CR>
autocmd BufNewFile,BufRead *.py noremap<buffer> <Leader>f :!black %<CR>

" -- PLUGIN SETTINGS --

" Enable plugins and load plugin for the detected file type.
" I have no idea how this works
filetype plugin on
" Enable Omnicomplete features
set omnifunc=syntaxcomplete#Complete

