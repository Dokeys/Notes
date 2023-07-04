" .vimrc file from Dominik Knoll

" Leader key to space
let mapleader = " "

" activate line numbers
set nu
" set tab to 4 spaces
set ts=4
" set color style
color desert
" cursor settings
if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif

" set cursor line on the current line number 
set cursorline
" set cursor line style
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
