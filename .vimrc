set nocompatible " must be the first line
filetype on
filetype indent on
filetype plugin on
call pathogen#infect()
syntax on

" Set color theme
if has("gui_running")
  set linespace=3
  colorscheme PaperColor
  set background=light
  let g:airline_theme='light'
  highlight ColorColumn ctermbg=255 guibg=#e5e5e5
else
  colorscheme onedark
  let g:airline_theme='badwolf'
  highlight ColorColumn ctermbg=234 guibg=#2c2d27
endif

" highlight Normal ctermbg=NONE
" highlight nonText ctermbg=NONE

let g:airline#extensions#tabline#enabled = 1
set guifont=Hack:h14
set cursorline
set cursorcolumn

" Powerline is cool
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:Powerline_symbols = 'fancy'

set number
set laststatus=2
set tabstop=2
set shiftwidth=2
set expandtab
set guioptions-=T  "remove toolbar
set guioptions-=L
set guioptions-=r
set directory=/tmp

let mapleader = " "

" Set color column
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"" Fast grep
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
nnoremap \ :Ag<SPACE>

let g:CommandTWildIgnore=&wildignore . "*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg0,tmp,log,dist,node_modules,bower_components,public/sites,public/uploads,log/*.log,build,spec/tmp,_build,deps"

map <Leader>r :call VimuxRunLastCommand()<CR>

" Ruby
au FileType ruby call FileType_Ruby()
function! FileType_Ruby()
  if exists("b:did_ftruby") | return | endif
  let b:did_ftruby = 1
  map <Leader>o :call VimuxRunCommand("bin/rspec " . bufname("%") . ":" . line("."))<CR>
  map <Leader>m :call VimuxRunCommand("bin/rspec " . bufname("%"))<CR>
  map <Leader>n :call VimuxRunCommand("bin/rspec spec/")<CR>
endfunction

" Haskell
au FileType haskell call FileType_Haskell()
function! FileType_Haskell()
  if exists("b:did_fthaskell") | return | endif
  let b:did_fthaskell = 1
  map <Leader>n :call VimuxRunCommand("cabal test")<CR>
endfunction

au BufNewFile,BufRead *.hbs set filetype=html
au BufNewFile,BufRead *.cap set filetype=ruby
au BufWritePre * :%s/\s\+$//e " Clean up white spaces
au VimResized * :wincmd =
au BufEnter * set relativenumber
au InsertEnter * :set number
au InsertLeave * :set relativenumber

runtime macros/matchit.vim

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
command! NumberToggle call NumberToggle()

function! PasteToggle()
  if(&paste == 1)
    set nopaste
    echo "nopaste mode"
  else
    set paste
    echo "paste mode"
  endif
endfunc
command! PasteToggle call PasteToggle()

nnoremap <C-n> :NumberToggle<CR>
nnoremap <Leader>s :update<CR>
nnoremap <Leader>d :bp\|bd #<CR>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>p :PasteToggle<CR>

" Per project vimrc
set exrc
set secure
