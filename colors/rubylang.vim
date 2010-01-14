" Colourscheme modeled after the code examples
" on http://www.ruby-lang.org. Credit for any
" eye-pleasingness go to the author thereof.
"
" GVim port by Eero Saynatkari

set background=dark
hi clear          
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="rubylang"

" General
hi Normal                   guifg=#dcdccc guibg=#213449

hi Boolean                  guifg=#dca3a3
hi Character                guifg=#ff0077 gui=bold
hi Comment                  guifg=#428bdd
hi Conditional              guifg=#f9bb00 gui=bold
hi Constant                 guifg=#8aa6c1 gui=bold
hi Number                   guifg=#eddd3d
hi Float                    guifg=#eddd3d
hi Function                 guifg=#ffffff
hi Identifier               guifg=#ccccff
hi Keyword                  guifg=#f9bb00 gui=bold
hi String                   guifg=#33cc33
hi Exception                guifg=#ffeeee
hi NonText                  guifg=#ff0000
hi StatusLine               guifg=#1e2320 guibg=#213449

" Ruby
hi rubyEscape               guifg=#eddd3d
hi rubyConstant             guifg=#6a86a1
hi rubyOperator             guifg=#8aa6c1
hi rubyPseudoOperator       guifg=#8aa6c1
hi rubyBracketOperator      guifg=#8aa6c1
hi rubyDefine               guifg=#f9bb00
hi rubyControl		          guifg=#f9bb00	
hi rubyClass	              guifg=#ffcc99	
hi rubyModule               guifg=#ffcc99	
hi rubyGlobalVariable       guifg=#cc5555	
hi rubyInstanceVariable     guifg=#8aa6c1
hi rubyClassVariable        guifg=#ccaaaa
hi rubyPredefinedConstant	  guifg=#6688cc
hi rubyPredefinedVariable   guifg=#6688cc
hi rubySymbol		            guifg=#b53b3c	
hi rubyKeyword	            guifg=#f9bb00
hi rubyException            guifg=#cc4444
hi rubyEval                 guifg=#cc3333
hi rubyInterpolation        guifg=#dd9999		
hi rubyStringDelimiter      guifg=#99dd99
  
hi Cursor          guifg=#000d18 guibg=#8faf9f gui=bold
hi Debug           guifg=#dca3a3 gui=bold
hi Define          guifg=#dddddd gui=bold
hi Delimiter       guifg=#8f8f8f
hi DiffAdd         guifg=#709080 guibg=#313c36 gui=bold
hi DiffChange      guibg=#333333
hi DiffDelete      guifg=#333333 guibg=#464646
hi DiffText        guifg=#ecbcbc guibg=#41363c gui=bold
hi Directory       guifg=#dcdccc gui=bold
hi ErrorMsg        guifg=#60b48a guibg=#3f3f3f gui=bold
hi Exception       guifg=#c3bf9f gui=bold
hi FoldColumn      guifg=#93b3a3 guibg=#3f4040
hi Folded          guifg=#93b3a3 guibg=#3f4040
hi IncSearch       guibg=#f8f893 guifg=#385f38
hi Label           guifg=#dfcfaf gui=underline
hi LineNr          guifg=#7f8f8f guibg=#213449
hi Macro           guifg=#ffcfaf gui=bold
hi ModeMsg         guifg=#ffcfaf gui=none
hi MoreMsg         guifg=#ffffff gui=bold
hi PreCondit       guifg=#dfaf8f gui=bold
hi PreProc         guifg=#ffcfaf gui=bold
hi Question        guifg=#ffffff gui=bold
hi Repeat          guifg=#ffd7a7 gui=bold
hi Search          guifg=#ffffe0 guibg=#385f38
hi SpecialChar     guifg=#dca3a3 gui=bold
hi SpecialComment  guifg=#82a282 gui=bold
hi Special         guifg=#cfbfaf
hi SpecialKey      guifg=#9ece9e
hi Statement       guifg=#e3ceab guibg=#213449 gui=none
hi StatusLineNC    guifg=#2e3330 guibg=#88b090
hi StorageClass    guifg=#c3bf9f gui=bold
hi Structure       guifg=#efefaf gui=bold
hi Tag             guifg=#dca3a3 gui=bold
hi Title           guifg=#efefef guibg=#3f3f3f gui=bold
hi Todo            guifg=#7faf8f guibg=#3f3f3f gui=bold
hi Typedef         guifg=#dfe4cf gui=bold
hi Type            guifg=#dfdfbf gui=bold
hi Underlined      guifg=#dcdccc guibg=#3f3f3f gui=underline
hi VertSplit       guifg=#303030 guibg=#688060
hi VisualNOS       guifg=#333333 guibg=#f18c96 gui=bold,underline
hi WarningMsg      guifg=#ffffff guibg=#333333 gui=bold
hi WildMenu        guibg=#2c302d guifg=#cbecd0 gui=underline
