set nocompatible
filetype indent plugin on
syntax on
set backspace=indent,eol,start
set autoindent
set laststatus=2
set ignorecase
set confirm
set visualbell
set mouse=a
set cmdheight=2
set incsearch 


" https://jeffkreeftmeijer.com/vim-number/ 
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


