" Vim syntax file

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

"Although there are few non-symbol characters in this syntax, there isn't
"any reason for it to be case-sensitive.
syntax case ignore

syn match magic    /N=\(\d*\)\?/
syn match todoitem /TODO/
syn match test     /^\s*t:.*$/
syn match prereq   /^\s*p:.*$/
syn match action   /^\s*a:.*$/
syn match verify   /^\s*v:.*$/
syn match ui       /^\s*u:.*$/
syn match clarify  /^.*?.*$/
syn match header   /^\s*\*.*$/

hi def link action      statement
hi def link clarify     warningmsg
hi def link header      identifier
hi def link magic       number
hi def link prereq      constant
hi def link test        title
hi def link todoitem    todo
hi def link verify      question
hi def link ui          special

