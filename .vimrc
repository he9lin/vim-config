set nocompatible " must be the first line
filetype on
filetype indent on
filetype plugin on
call pathogen#infect()
syntax on

" Set color theme
if has("gui_macvim")
  colorscheme hemisu
  set guifont=Ubuntu\ Mono\ derivative\ Powerline:h17
  set linespace=3
  let lightline_colorscheme = 'solarized_light'
else
  colorscheme tomorrow-night
  let lightline_colorscheme = 'default'
end

" Powerline is cool
let g:Powerline_symbols = 'fancy'
let g:lightline = {
      \ 'colorscheme': lightline_colorscheme,
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "•", 'right': "•" }
      \ }

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


" Cmd + T for fuzzyfinder
nnoremap <C-t> :<C-u>FufFile **/<CR>
nnoremap <C-a> :<C-u>FufRenewCache<CR>


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
