" Vim color file
" Converted from Textmate theme Brilliance Black using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Brilliance Black"

hi Cursor ctermfg=NONE ctermbg=63 cterm=NONE guifg=NONE guibg=#3333ff gui=NONE
hi Visual ctermfg=NONE ctermbg=17 cterm=NONE guifg=NONE guibg=#050f71 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#232323 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#232323 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#232323 gui=NONE
hi LineNr ctermfg=244 ctermbg=235 cterm=NONE guifg=#7e7e7e guibg=#232323 gui=NONE
hi VertSplit ctermfg=239 ctermbg=239 cterm=NONE guifg=#4e4e4e guibg=#4e4e4e gui=NONE
hi MatchParen ctermfg=231 ctermbg=NONE cterm=NONE guifg=#eeeeee guibg=NONE gui=NONE
hi StatusLine ctermfg=231 ctermbg=239 cterm=bold guifg=#eeeeee guibg=#4e4e4e gui=bold
hi StatusLineNC ctermfg=231 ctermbg=239 cterm=NONE guifg=#eeeeee guibg=#4e4e4e gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=17 cterm=NONE guifg=NONE guibg=#050f71 gui=NONE
hi IncSearch ctermfg=NONE ctermbg=240 cterm=NONE guifg=NONE guibg=#575757 gui=NONE
hi Search ctermfg=NONE ctermbg=240 cterm=NONE guifg=NONE guibg=#575757 gui=NONE
hi Directory ctermfg=48 ctermbg=NONE cterm=NONE guifg=#00ff79 guibg=NONE gui=NONE
hi Folded ctermfg=239 ctermbg=232 cterm=NONE guifg=#4c4c4c guibg=#0d0d0d gui=NONE

hi Normal ctermfg=231 ctermbg=232 cterm=NONE guifg=#eeeeee guibg=#0d0d0d gui=NONE
hi Boolean ctermfg=46 ctermbg=NONE cterm=NONE guifg=#07ff00 guibg=NONE gui=NONE
hi Character ctermfg=118 ctermbg=NONE cterm=NONE guifg=#86ff00 guibg=NONE gui=NONE
hi Comment ctermfg=239 ctermbg=233 cterm=NONE guifg=#4c4c4c guibg=#151515 gui=NONE
hi Conditional ctermfg=201 ctermbg=NONE cterm=NONE guifg=#f800ff guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi ErrorMsg ctermfg=52 ctermbg=196 cterm=bold guifg=#330004 guibg=#ff0007 gui=bold
hi WarningMsg ctermfg=52 ctermbg=196 cterm=bold guifg=#330004 guibg=#ff0007 gui=bold
hi Float ctermfg=190 ctermbg=NONE cterm=NONE guifg=#c6ff00 guibg=NONE gui=NONE
hi Function ctermfg=198 ctermbg=NONE cterm=NONE guifg=#ff0086 guibg=NONE gui=NONE
hi Identifier ctermfg=90 ctermbg=NONE cterm=NONE guifg=#7e0080 guibg=NONE gui=NONE
hi Keyword ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Label ctermfg=228 ctermbg=16 cterm=NONE guifg=#fffc80 guibg=#24170a gui=NONE
hi NonText ctermfg=234 ctermbg=234 cterm=NONE guifg=#202020 guibg=#181818 gui=NONE
hi Number ctermfg=190 ctermbg=NONE cterm=NONE guifg=#c6ff00 guibg=NONE gui=NONE
hi Operator ctermfg=20 ctermbg=NONE cterm=NONE guifg=#0000ce guibg=NONE gui=NONE
hi PreProc ctermfg=93 ctermbg=NONE cterm=NONE guifg=#7900ff guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#eeeeee guibg=NONE gui=NONE
hi SpecialKey ctermfg=234 ctermbg=235 cterm=NONE guifg=#202020 guibg=#232323 gui=NONE
hi Statement ctermfg=201 ctermbg=NONE cterm=NONE guifg=#f800ff guibg=NONE gui=NONE
hi StorageClass ctermfg=90 ctermbg=NONE cterm=NONE guifg=#7e0080 guibg=NONE gui=NONE
hi String ctermfg=228 ctermbg=16 cterm=NONE guifg=#fffc80 guibg=#24170a gui=NONE
hi Tag ctermfg=240 ctermbg=NONE cterm=NONE guifg=#565656 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#eeeeee guibg=NONE gui=bold
hi Todo ctermfg=239 ctermbg=233 cterm=inverse,bold guifg=#4c4c4c guibg=#151515 gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=201 ctermbg=NONE cterm=NONE guifg=#f800ff guibg=NONE gui=NONE
hi rubyFunction ctermfg=198 ctermbg=NONE cterm=NONE guifg=#ff0086 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=48 ctermbg=NONE cterm=NONE guifg=#00ff79 guibg=NONE gui=NONE
hi rubyConstant ctermfg=196 ctermbg=16 cterm=NONE guifg=#ff0000 guibg=#250a0a gui=NONE
hi rubyStringDelimiter ctermfg=228 ctermbg=16 cterm=NONE guifg=#fffc80 guibg=#24170a gui=NONE
hi rubyBlockParameter ctermfg=105 ctermbg=NONE cterm=NONE guifg=#9799ff guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=48 ctermbg=16 cterm=NONE guifg=#00ff79 guibg=#0a2423 gui=NONE
hi rubyInclude ctermfg=91 ctermbg=NONE cterm=NONE guifg=#782ec1 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=75 ctermbg=NONE cterm=NONE guifg=#31a6ff guibg=NONE gui=NONE
hi rubyRegexp ctermfg=226 ctermbg=16 cterm=NONE guifg=#fff800 guibg=#18240a gui=NONE
hi rubyRegexpDelimiter ctermfg=226 ctermbg=16 cterm=NONE guifg=#fff800 guibg=#18240a gui=NONE
hi rubyEscape ctermfg=118 ctermbg=NONE cterm=NONE guifg=#86ff00 guibg=NONE gui=NONE
hi rubyControl ctermfg=201 ctermbg=NONE cterm=NONE guifg=#f800ff guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=20 ctermbg=NONE cterm=NONE guifg=#0000ce guibg=NONE gui=NONE
hi rubyException ctermfg=91 ctermbg=NONE cterm=NONE guifg=#782ec1 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=48 ctermbg=16 cterm=NONE guifg=#00ff79 guibg=#0a2423 gui=NONE
hi rubyRailsUserClass ctermfg=196 ctermbg=16 cterm=NONE guifg=#ff0000 guibg=#250a0a gui=NONE
hi rubyRailsARAssociationMethod ctermfg=91 ctermbg=NONE cterm=NONE guifg=#782ec1 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=91 ctermbg=NONE cterm=NONE guifg=#782ec1 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=91 ctermbg=NONE cterm=NONE guifg=#782ec1 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=91 ctermbg=NONE cterm=NONE guifg=#782ec1 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=51 ctermbg=16 cterm=NONE guifg=#00fff8 guibg=#0c2525 gui=NONE
hi erubyComment ctermfg=239 ctermbg=233 cterm=NONE guifg=#4c4c4c guibg=#151515 gui=NONE
hi erubyRailsMethod ctermfg=91 ctermbg=NONE cterm=NONE guifg=#782ec1 guibg=NONE gui=NONE
hi htmlTag ctermfg=236 ctermbg=NONE cterm=NONE guifg=#333333 guibg=NONE gui=NONE
hi htmlEndTag ctermfg=236 ctermbg=NONE cterm=NONE guifg=#333333 guibg=NONE gui=NONE
hi htmlTagName ctermfg=236 ctermbg=NONE cterm=NONE guifg=#333333 guibg=NONE gui=NONE
hi htmlArg ctermfg=236 ctermbg=NONE cterm=NONE guifg=#333333 guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=118 ctermbg=NONE cterm=NONE guifg=#86ff00 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=90 ctermbg=NONE cterm=NONE guifg=#7e0080 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=91 ctermbg=NONE cterm=NONE guifg=#782ec1 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=240 ctermbg=NONE cterm=NONE guifg=#565656 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=75 ctermbg=NONE cterm=NONE guifg=#31a6ff guibg=NONE gui=NONE
hi yamlAlias ctermfg=75 ctermbg=NONE cterm=NONE guifg=#31a6ff guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=216 ctermbg=NONE cterm=NONE guifg=#ffbc80 guibg=NONE gui=NONE
hi cssURL ctermfg=228 ctermbg=16 cterm=NONE guifg=#fffc80 guibg=#24170a gui=NONE
hi cssFunctionName ctermfg=91 ctermbg=NONE cterm=NONE guifg=#782ec1 guibg=NONE gui=NONE
hi cssColor ctermfg=48 ctermbg=NONE cterm=NONE guifg=#00ff79 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=93 ctermbg=NONE cterm=NONE guifg=#7900ff guibg=NONE gui=NONE
hi cssClassName ctermfg=237 ctermbg=NONE cterm=NONE guifg=#3d3d3d guibg=NONE gui=NONE
hi cssValueLength ctermfg=190 ctermbg=NONE cterm=NONE guifg=#c6ff00 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=51 ctermbg=NONE cterm=NONE guifg=#00fff8 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE