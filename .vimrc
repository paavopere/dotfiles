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
set hidden
set scrolloff=5
set clipboard=unnamedplus
" https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab 

" https://jeffkreeftmeijer.com/vim-number/ 
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
call plug#end()

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme = 'jellybeans'
