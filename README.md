### Sample vimrc file
   
  set nocompatible " must be the first line
  filetype on
  filetype indent on
  filetype plugin on
  call pathogen#infect()
  syntax on
  colorscheme green
  colorscheme molokai
  set guifont=PT\ Mono:h13
  set number
  set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
  set laststatus=2
  set tabstop=2
  set shiftwidth=2
  set expandtab
  set guioptions-=T  "remove toolbar
  set guioptions-=L
  set guioptions-=r
  set directory=/tmp
  let mapleader = ","
  autocmd BufWritePre * :%s/\s\+$//e
