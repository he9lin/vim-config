Sample .vimrc file

```vim
set nocompatible " must be the first line
filetype on
filetype indent on
filetype plugin on
call pathogen#infect()
syntax on
let g:cange_style = 'light'
colorscheme cange
set guifont=Source\ Code\ Pro:h14
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
autocmd BufWritePre * :%s/\s\+$//e
let g:ackprg = 'ag --nogroup --nocolor --column'

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
" highlight ColorColumn guibg=#F2F2F2

" map Ctrl+T to :FufFile **/
nnoremap <C-t> :<C-u>FufFile **/<CR>

" Rspec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Ruby
map <Leader>r :!~/.rbenv/shims/ruby %<CR>
```
