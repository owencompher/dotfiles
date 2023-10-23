let colors_name = "mycolor"

hi Normal     ctermfg=white
hi Constant   ctermfg=darkmagenta
hi Keyword    ctermfg=yellow
hi Comment    ctermfg=darkgrey
hi String     ctermfg=darkred
hi Special    ctermfg=darkred cterm=italic
hi PreProc    ctermfg=green
hi Type       ctermfg=blue
hi Function   ctermfg=red
hi def link Boolean Constant
hi def link Number Constant
hi def link Statement Keyword
hi def link Repeat Keyword
hi def link Conditional Keyword
hi def link Operator Keyword
hi def link Exception Keyword
hi def link Include PreProc
hi def link Structure Type

hi LineNr       ctermfg=8
hi LineNrAbove  ctermfg=8
hi LineNrBelow  ctermfg=8
hi clear CursorLine
hi clear CursorLineNr
hi CursorLineNr ctermfg=7

hi NonText      ctermfg=8
hi ColorColumn  ctermbg=0

hi clear MatchParen
hi MatchParen   cterm=bold ctermfg=yellow
