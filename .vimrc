set nocompatible " must be the first line
filetype on
filetype indent on
filetype plugin on
call pathogen#infect()
syntax on

" Powerline is cool
let g:Powerline_symbols = 'fancy'
let g:lightline = {
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "•", 'right': "•" }
      \ }

" Set color theme
" let g:cange_style = 'dark'
if has("gui_macvim")
  colorscheme tomorrow
  set guifont=Ubuntu\ Mono\ derivative\ Powerline:h17
  set linespace=3
else
  colorscheme jellybeans
end

" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
set number
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

" Fast grep
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" FuzzyFinder
let g:fuf_file_exclude = '\v\~$|(^|[/\\])tmp|(^|[/\\])vendor[/\\]bundle[/\\]'

" Cmd + T for fuzzyfinder
nnoremap <C-t> :<C-u>FufFile **/<CR>
" nnoremap <C-r> :FufRenewCache<CR>

" RSpec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Ruby
map <Leader>m :w\|:!~/.rbenv/shims/ruby %<CR>

" Handlbar hbs
au BufNewFile,BufRead *.hbs set filetype=html
au BufNewFile,BufRead *.cap set filetype=ruby

" Ctrl + i for peepopen
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <C-i> <Plug>PeepOpen
end
