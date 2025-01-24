" .vimrc file from Dominik Knoll
" Last changes: 24.01.25

" Use jj to exit insert mode 
imap jj <ESC> 

" -- VIEW SETTINGS --

" Enable syntax highlighting
syntax on
" Activate line numbers
set number

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

" Relative line numbers but not in insert mode
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" -- FILE EXPLORER SETTINGS --
  
" Netrw settings for file navigation (https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/)
let g:netrw_keepdir = 0 " Keep the current directory and the browsing directory synced
let g:netrw_winsize = 20 " Change the size of the Netrw window when it creates a split
let g:netrw_banner = 0 " Hide the banner 
" let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+' " Hide dotfiles on load
let g:netrw_localcopydircmd = 'cp -r' " Change the copy command. Mostly to enable recursive copy of directories.
hi! link netrwMarkFile Search " Highlight marked files in the same way search matches are.

" -- OTHER OPTIONS --

" Highligt while typing
set incsearch 
" Highlight search results (deavtivate until next search with :noh)
set hls
" Search ignore upper- or lowercase  
set ignorecase
set smartcase " ignore it when search with uppercase letters

" -- SHORTCUT SETTINGS --

" Leader key to space
let mapleader = " "

" Shortcut for open terminal on the right side
noremap <Leader>tl :botright vertical terminal<CR>
noremap <Leader>tb :below terminal<CR>

" Shortcut for open Netrw in the directory of the current file
nnoremap <leader>dd :Lexplore %:p:h<CR>
" Shortcut for open Netrw in the current working directory
nnoremap <Leader>da :Lexplore<CR>


" Shortcut for formatting the current c, h and py files
autocmd BufNewFile,BufRead *.c,*cpp,*.h,*.hpp noremap<buffer> <Leader>f :!clang-format -i %<CR>
noremap <Leader>td :below terminal<CR>autocmd BufNewFile,BufRead *.py noremap<buffer> <Leader>f :!black %<CR>

" -- PLUGIN SETTINGS --

" Enable plugins and load plugin for the detected file type.
" I have no idea how this works
filetype plugin on
" Enable Omnicomplete features
set omnifunc=syntaxcomplete#Complete
noremap <Leader>td :below terminal<CR>

"  -- GVIM GUI SETTINGS --
"
set guifont=Consolas:h13


