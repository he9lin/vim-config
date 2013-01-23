" Vim color file
" Converted from Textmate theme Brilliance Dull using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Brilliance Dull"

hi Cursor ctermfg=NONE ctermbg=103 cterm=NONE guifg=NONE guibg=#7979b7 gui=NONE
hi Visual ctermfg=NONE ctermbg=17 cterm=NONE guifg=NONE guibg=#111149 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#191919 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#191919 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#191919 gui=NONE
hi LineNr ctermfg=242 ctermbg=234 cterm=NONE guifg=#696969 guibg=#191919 gui=NONE
hi VertSplit ctermfg=237 ctermbg=237 cterm=NONE guifg=#3f3f3f guibg=#3f3f3f gui=NONE
hi MatchParen ctermfg=133 ctermbg=NONE cterm=NONE guifg=#a459a5 guibg=NONE gui=NONE
hi StatusLine ctermfg=252 ctermbg=237 cterm=bold guifg=#cdcdcd guibg=#3f3f3f gui=bold
hi StatusLineNC ctermfg=252 ctermbg=237 cterm=NONE guifg=#cdcdcd guibg=#3f3f3f gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=17 cterm=NONE guifg=NONE guibg=#111149 gui=NONE
hi IncSearch ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#39213a gui=NONE
hi Search ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#39213a gui=NONE
hi Directory ctermfg=72 ctermbg=NONE cterm=NONE guifg=#57a57d guibg=NONE gui=NONE
hi Folded ctermfg=236 ctermbg=232 cterm=NONE guifg=#333333 guibg=#050505 gui=NONE

hi Normal ctermfg=252 ctermbg=232 cterm=NONE guifg=#cdcdcd guibg=#050505 gui=NONE
hi Boolean ctermfg=71 ctermbg=NONE cterm=NONE guifg=#59a559 guibg=NONE gui=NONE
hi Character ctermfg=107 ctermbg=NONE cterm=NONE guifg=#80a659 guibg=NONE gui=NONE
hi Comment ctermfg=236 ctermbg=NONE cterm=NONE guifg=#333333 guibg=NONE gui=NONE
hi Conditional ctermfg=133 ctermbg=16 cterm=NONE guifg=#a459a5 guibg=#10041e gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=133 ctermbg=NONE cterm=NONE guifg=#a459a5 guibg=NONE gui=NONE
hi ErrorMsg ctermfg=16 ctermbg=131 cterm=bold guifg=#211211 guibg=#a7595a gui=bold
hi WarningMsg ctermfg=16 ctermbg=131 cterm=bold guifg=#211211 guibg=#a7595a gui=bold
hi Float ctermfg=107 ctermbg=NONE cterm=NONE guifg=#95a658 guibg=NONE gui=NONE
hi Function ctermfg=132 ctermbg=NONE cterm=NONE guifg=#a75980 guibg=NONE gui=NONE
hi Identifier ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a77d58 guibg=NONE gui=NONE
hi Keyword ctermfg=133 ctermbg=NONE cterm=NONE guifg=#a459a5 guibg=NONE gui=NONE
hi Label ctermfg=187 ctermbg=16 cterm=NONE guifg=#d2d1ab guibg=#1e1004 gui=NONE
hi NonText ctermfg=234 ctermbg=233 cterm=NONE guifg=#191919 guibg=#0f0f0f gui=NONE
hi Number ctermfg=107 ctermbg=NONE cterm=NONE guifg=#95a658 guibg=NONE gui=NONE
hi Operator ctermfg=103 ctermbg=NONE cterm=bold guifg=#7979b7 guibg=NONE gui=bold
hi PreProc ctermfg=133 ctermbg=NONE cterm=NONE guifg=#a459a5 guibg=NONE gui=NONE
hi Special ctermfg=252 ctermbg=NONE cterm=NONE guifg=#cdcdcd guibg=NONE gui=NONE
hi SpecialKey ctermfg=234 ctermbg=234 cterm=NONE guifg=#191919 guibg=#191919 gui=NONE
hi Statement ctermfg=133 ctermbg=16 cterm=NONE guifg=#a459a5 guibg=#10041e gui=NONE
hi StorageClass ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a77d58 guibg=NONE gui=NONE
hi String ctermfg=187 ctermbg=16 cterm=NONE guifg=#d2d1ab guibg=#1e1004 gui=NONE
hi Tag ctermfg=239 ctermbg=NONE cterm=NONE guifg=#505050 guibg=NONE gui=NONE
hi Title ctermfg=252 ctermbg=NONE cterm=bold guifg=#cdcdcd guibg=NONE gui=bold
hi Todo ctermfg=236 ctermbg=NONE cterm=inverse,bold guifg=#333333 guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=133 ctermbg=16 cterm=NONE guifg=#a459a5 guibg=#10041e gui=NONE
hi rubyFunction ctermfg=132 ctermbg=NONE cterm=NONE guifg=#a75980 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=72 ctermbg=NONE cterm=NONE guifg=#57a57d guibg=NONE gui=NONE
hi rubyConstant ctermfg=131 ctermbg=16 cterm=NONE guifg=#a7595a guibg=#1e0405 gui=NONE
hi rubyStringDelimiter ctermfg=187 ctermbg=16 cterm=NONE guifg=#d2d1ab guibg=#1e1004 gui=NONE
hi rubyBlockParameter ctermfg=146 ctermbg=16 cterm=NONE guifg=#abacd2 guibg=#10041e gui=NONE
hi rubyInstanceVariable ctermfg=59 ctermbg=NONE cterm=NONE guifg=#5e6b6b guibg=NONE gui=NONE
hi rubyInclude ctermfg=103 ctermbg=NONE cterm=NONE guifg=#8d809d guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=67 ctermbg=NONE cterm=NONE guifg=#5780a6 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=143 ctermbg=16 cterm=NONE guifg=#a6a458 guibg=#111e04 gui=NONE
hi rubyRegexpDelimiter ctermfg=143 ctermbg=16 cterm=NONE guifg=#a6a458 guibg=#111e04 gui=NONE
hi rubyEscape ctermfg=107 ctermbg=NONE cterm=NONE guifg=#80a659 guibg=NONE gui=NONE
hi rubyControl ctermfg=133 ctermbg=16 cterm=NONE guifg=#a459a5 guibg=#10041e gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=103 ctermbg=NONE cterm=bold guifg=#7979b7 guibg=NONE gui=bold
hi rubyException ctermfg=103 ctermbg=NONE cterm=NONE guifg=#8d809d guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=59 ctermbg=NONE cterm=NONE guifg=#5e6b6b guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=131 ctermbg=16 cterm=NONE guifg=#a7595a guibg=#1e0405 gui=NONE
hi rubyRailsARAssociationMethod ctermfg=60 ctermbg=NONE cterm=NONE guifg=#634683 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=60 ctermbg=NONE cterm=NONE guifg=#634683 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=60 ctermbg=NONE cterm=NONE guifg=#634683 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=60 ctermbg=NONE cterm=NONE guifg=#634683 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=73 ctermbg=16 cterm=NONE guifg=#56a5a4 guibg=#051e1d gui=NONE
hi erubyComment ctermfg=236 ctermbg=NONE cterm=NONE guifg=#333333 guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=60 ctermbg=NONE cterm=NONE guifg=#634683 guibg=NONE gui=NONE
hi htmlTag ctermfg=236 ctermbg=NONE cterm=NONE guifg=#333333 guibg=NONE gui=NONE
hi htmlEndTag ctermfg=236 ctermbg=NONE cterm=NONE guifg=#333333 guibg=NONE gui=NONE
hi htmlTagName ctermfg=236 ctermbg=NONE cterm=NONE guifg=#333333 guibg=NONE gui=NONE
hi htmlArg ctermfg=236 ctermbg=NONE cterm=NONE guifg=#333333 guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=107 ctermbg=NONE cterm=NONE guifg=#80a659 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a77d58 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=60 ctermbg=NONE cterm=NONE guifg=#634683 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=15 ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE gui=bold
hi yamlKey ctermfg=239 ctermbg=NONE cterm=NONE guifg=#505050 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=67 ctermbg=NONE cterm=NONE guifg=#5780a6 guibg=NONE gui=NONE
hi yamlAlias ctermfg=67 ctermbg=NONE cterm=NONE guifg=#5780a6 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=181 ctermbg=NONE cterm=NONE guifg=#d2beab guibg=NONE gui=NONE
hi cssURL ctermfg=187 ctermbg=16 cterm=NONE guifg=#d2d1ab guibg=#1e1004 gui=NONE
hi cssFunctionName ctermfg=60 ctermbg=NONE cterm=NONE guifg=#634683 guibg=NONE gui=NONE
hi cssColor ctermfg=72 ctermbg=NONE cterm=NONE guifg=#57a57d guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=97 ctermbg=NONE cterm=NONE guifg=#7c58a5 guibg=NONE gui=NONE
hi cssClassName ctermfg=237 ctermbg=NONE cterm=NONE guifg=#373737 guibg=NONE gui=NONE
hi cssValueLength ctermfg=107 ctermbg=NONE cterm=NONE guifg=#95a658 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=73 ctermbg=NONE cterm=NONE guifg=#56a5a4 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE