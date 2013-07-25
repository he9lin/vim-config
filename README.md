Sample .vimrc file

```vim
set nocompatible " must be the first line
filetype on
filetype indent on
filetype plugin on
call pathogen#infect()
syntax on

" Set color theme
let g:cange_style = 'dark'
colorscheme cange

set guifont=Inconsolata:h14
set linespace=2
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

" Clean up white spaces
autocmd BufWritePre * :%s/\s\+$//e

" Set color column
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Cmd + T for fuzzyfinder
nnoremap <C-t> :<C-u>FufFile <CR>
```
