set nocompatible " must be the first line
filetype on
filetype indent on
filetype plugin on
call pathogen#infect()
syntax on

" Set color theme
if has("gui_macvim")
  set linespace=3
end

let g:molokai_original = 1
let g:airline_theme='luna'
colorscheme onedark
let &colorcolumn="80,".join(range(81,999),",")
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let g:molokai_original = 1
let g:airline_theme='luna'
set guifont=Roboto\ Mono:h14
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

" Clean up white spaces
autocmd BufWritePre * :%s/\s\+$//e

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

" FuzzyFinder should ignore all files in .gitignore
let ignorefiles = [ $HOME . "/.gitignore", ".gitignore" ]
let exclude_vcs = '\.(hg|git|bzr|svn|cvs)'
let ignore = '\v\~$'

for ignorefile in ignorefiles
  if filereadable(ignorefile)
    for line in readfile(ignorefile)
      if match(line, '^\s*$') == -1 && match(line, '^#') == -1
        let line = substitute(line, '^/', '', '')
        let line = substitute(line, '\.', '\\.', 'g')
        let line = substitute(line, '\*', '.*', 'g')
        let ignore .= '|^' . line
      endif
    endfor
  endif

  let ignore .= '|^' . exclude_vcs
  let g:fuf_coveragefile_exclude = ignore
  let g:fuf_file_exclude = ignore
  let g:fuf_dir_exclude = ignore
endfor

" nnoremap <C-t> :<C-u>FufFile **/<CR>
" nnoremap <C-a> :<C-u>FufRenewCache<CR>

set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg0,tmp,log,dist,node_modules,bower_components
let g:CommandTWildIgnore=&wildignore
" let g:CommandTFileScanner = "git"
" let g:CommandTMaxHeight = 30
" let g:CommandTMaxFiles = 500000
" let g:CommandTSCMDirectories='.git,.hg,.svn,.bzr,_darcs,manifest.webapp'

map <Leader>r :call VimuxRunLastCommand()<CR>

" Ruby
au FileType ruby call FileType_Ruby()
function! FileType_Ruby()
  if exists("b:did_ftruby") | return | endif
  let b:did_ftruby = 1
  " map <Leader>t :call RunCurrentSpecFile()<CR>
  " map <Leader>s :call RunNearestSpec()<CR>
  " map <Leader>l :call RunLastSpec()<CR>
  " map <Leader>a :call RunAllSpecs()<CR>

  map <Leader>o :call VimuxRunCommand("bin/rspec " . bufname("%") . ":" . line("."))<CR>
  map <Leader>m :call VimuxRunCommand("bin/rspec " . bufname("%"))<CR>
  map <Leader>n :call VimuxRunCommand("bin/rspec spec/")<CR>
endfunction

" Elixir
au BufRead,BufNewFile *.exs setfiletype exs
au FileType exs call FileType_Elixir()
function! FileType_Elixir()
  if exists("b:did_ftelixir") | return | endif
  let b:did_ftelixir = 1
  map <Leader>m :w\|:!mix test %<CR>
  map <Leader>s :w\|:!mix test<CR>
endfunction

" Haskell
au FileType haskell call FileType_Haskell()
function! FileType_Haskell()
  if exists("b:did_fthaskell") | return | endif
  let b:did_fthaskell = 1
  map <Leader>m :w\|:!runhaskell %<CR>
endfunction

" Handlbar hbs
au BufNewFile,BufRead *.hbs set filetype=html
au BufNewFile,BufRead *.cap set filetype=ruby

" Swift
au BufRead,BufNewFile *.swift setfiletype swift
au FileType swift call FileType_Swift()
function! FileType_Swift()
  if exists("b:did_ftswift") | return | endif
  let b:did_ftswift = 1
  map <Leader>m :w\|:! xcrun swift -i %<CR>
endfunction

autocmd VimResized * :wincmd =
noremap <Leader>s :update<CR>
runtime macros/matchit.vim

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<CR>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>

