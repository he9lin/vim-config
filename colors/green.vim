" Generated by Color Theme Generator at Sweyla
" http://themes.sweyla.com/seed/880729/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla880729"

if version >= 700
  hi CursorLine     guibg=#000000 ctermbg=16
  hi CursorColumn   guibg=#000000 ctermbg=16
  hi MatchParen     guifg=#14FF94 guibg=#000000 gui=bold ctermfg=48 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#00A25A ctermfg=255 ctermbg=35
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#000000 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#0F0F0F gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#FFFFFF guibg=#191919 gui=none ctermfg=255 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#002012 gui=italic ctermfg=255 ctermbg=233 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#282828 gui=none ctermfg=255 ctermbg=235 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#191919 gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#000000 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#00A25A guibg=NONE	gui=bold ctermfg=35 ctermbg=NONE cterm=bold
hi Visual           guifg=#0C6E8A guibg=#323232 gui=none ctermfg=24 ctermbg=236 cterm=none
hi SpecialKey       guifg=#2B20CC guibg=#0F0F0F gui=none ctermfg=20 ctermbg=233 cterm=none
"hi DiffChange       guibg=#4C4C00 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#25254C gui=none ctermbg=235 cterm=none
"hi DiffText         guibg=#663266 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#3F0000 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#FFFFD7 gui=bold ctermfg=230 cterm=bold


" Syntax highlighting
hi Comment guifg=#00A25A gui=none ctermfg=35 cterm=none
hi Constant guifg=#2B20CC gui=none ctermfg=20 cterm=none
hi Number guifg=#2B20CC gui=none ctermfg=20 cterm=none
hi Identifier guifg=#AD5D56 gui=none ctermfg=131 cterm=none
hi Statement guifg=#14FF94 gui=none ctermfg=48 cterm=none
hi Function guifg=#B83637 gui=none ctermfg=131 cterm=none
hi Special guifg=#668A43 gui=none ctermfg=65 cterm=none
hi PreProc guifg=#668A43 gui=none ctermfg=65 cterm=none
hi Keyword guifg=#14FF94 gui=none ctermfg=48 cterm=none
hi String guifg=#0C6E8A gui=none ctermfg=24 cterm=none
hi Type guifg=#00DB1A gui=none ctermfg=40 cterm=none
hi pythonBuiltin guifg=#AD5D56 gui=none ctermfg=131 cterm=none
hi TabLineFill guifg=#042C37 gui=none ctermfg=236 cterm=none
