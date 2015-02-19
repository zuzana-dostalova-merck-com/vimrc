set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'   " required
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'chriskempson/base16-vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable " Turn on syntax highlighting
set history=1000 " By default Vim saves your last 8 commands
set number " Set the line numbers
set encoding=utf-8

set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase

let mapleader=","

set backupdir=~/.vim/backup
set directory=~/.vim/backup 

set bg=dark
color base16-default

" Remember last location in file
aug last_location
  au!
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
aug END

" Save undo history
if has('persistent_undo')
  set undofile
  if !isdirectory(expand('~/.vimundo'))
    silent !mkdir ~/.vimundo > /dev/null 2>&1
  endif
  set undodir=~/.vimundo
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Show (partial) command in the status line
set showcmd

set cursorline

" For easier navigation between windows
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>

" Switching between active files in a buffer.
nnoremap <leader><leader> <c-^>

set mouse=a
set exrc
set secure


