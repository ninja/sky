hi clear

syntax reset

let g:colors_name = "sky"

" Color palette.
let s:EARTH = "#8D6E63"
let s:SKY = ["#00191a", "#003133", "#006064", "#0097A7", "#00BCD4"]
let s:STAR = ["#e0e0e0", "#f5f5f5"]
let s:STATUS = ["#80c684", "#f5be19", "#f44034"]

" Default, no background is set to allow transparency.
exe "hi Normal gui=NONE guifg=" s:STAR[0] "guibg=NONE"

" Editing.
exe "hi Cursor gui=NONE guifg=" s:STAR[1] "guibg=" s:SKY[4]
exe "hi CursorLine gui=NONE guifg=NONE guibg=" s:SKY[0]
exe "hi CursorLineNr gui=NONE guifg=" s:SKY[4] "guibg=" s:SKY[0]
exe "hi LineNr gui=NONE guifg=" s:SKY[2] "guibg=NONE"

" Number column.
exe "hi CursorColumn gui=NONE guifg=NONE guibg=" s:SKY[1]
exe "hi FoldColumn gui=NONE guifg=" s:SKY[2] "guibg=NONE"
exe "hi Folded gui=NONE guifg=" s:SKY[2] "guibg=NONE"
exe "hi SignColumn gui=NONE guifg=" s:SKY[2] "guibg=NONE"

" Window/tab delimiters.
exe "hi ColorColumn gui=NONE guifg=" s:SKY[4] "guibg=" s:SKY[0]
exe "hi TabLine gui=NONE guifg=NONE guibg=" s:SKY[0]
exe "hi TabLineFill gui=NONE guifg=NONE guibg=" s:SKY[0]
exe "hi TabLineSel gui=NONE guifg=NONE guibg=" s:SKY[2]
exe "hi VertSplit gui=NONE guifg=" s:SKY[2] "guibg=NONE"

" File navigation/searching.
exe "hi Directory gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi IncSearch gui=NONE guifg=" s:SKY[4] "guibg=NONE"
exe "hi Search gui=NONE guifg=" s:SKY[4] "guibg=NONE"

" Prompt/status.
exe "hi ModeMsg gui=NONE guifg=" s:SKY[2] "guibg=NONE"
exe "hi MoreMsg gui=NONE guifg=" s:SKY[2] "guibg=NONE"
exe "hi Question gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi StatusLine gui=NONE guifg=NONE guibg=" s:SKY[0]
exe "hi StatusLineNC gui=NONE guifg=NONE guibg=" s:SKY[0]
exe "hi Title gui=NONE guifg=" s:SKY[4] "guibg=NONE"
exe "hi WildMenu gui=NONE guifg=" s:STAR[1] "guibg=" s:SKY[4]

" Visual aid.
exe "hi Conceal gui=NONE guifg=" s:SKY[2] "guibg=NONE"
exe "hi Error gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi ErrorMsg gui=NONE guifg=" s:STATUS[2] "guibg=NONE"
exe "hi Ignore gui=NONE guifg=" s:SKY[2] "guibg=NONE"
exe "hi MatchParen gui=NONE guifg=NONE guibg=" s:SKY[1]
exe "hi NonText gui=NONE guifg=" s:SKY[2] "guibg=NONE"
exe "hi SpecialKey gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Todo gui=NONE guifg=" s:SKY[4] "guibg=NONE"
exe "hi Underlined gui=NONE guifg=" s:SKY[2] "guibg=NONE"
exe "hi Visual gui=NONE guifg=" s:STAR[1] "guibg=" s:SKY[2]
exe "hi VisualNOS gui=NONE guifg=NONE guibg=" s:SKY[2]
exe "hi WarningMsg gui=NONE guifg=" s:STATUS[1] "guibg=NONE"

" Variable types.
exe "hi Boolean gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Character gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Constant gui=NONE guifg=" s:SKY[2] "guibg=NONE"
exe "hi Float gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Function gui=NONE guifg=" s:SKY[4] "guibg=NONE"
exe "hi Identifier gui=NONE guifg=" s:STAR[0] "guibg=NONE"
exe "hi Number gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi String gui=NONE guifg=" s:SKY[4] "guibg=NONE"
exe "hi StringDelimiter gui=NONE guifg=" s:SKY[4] "guibg=NONE"

" Language constructs.
exe "hi Comment gui=NONE guifg=" s:SKY[3] "guibg=NONE"
exe "hi Conditional gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Debug gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Delimiter gui=NONE guifg=" s:SKY[4] "guibg=NONE"
exe "hi Exception gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Include gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Keyword gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Label gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Noise gui=NONE guifg=" s:SKY[4] "guibg=NONE"
exe "hi Operator gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi PreProc gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Repeat gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Special gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi SpecialChar gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Statement gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi StorageClass gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Structure gui=NONE guifg=" s:EARTH "guibg=NONE"
exe "hi Type gui=NONE guifg=" s:EARTH "guibg=NONE"

" Diffing.
exe "hi DiffAdd gui=NONE guifg=" s:STATUS[0] "guibg=NONE"
exe "hi DiffChange gui=NONE guifg=NONE guibg=" s:SKY[0]
exe "hi DiffDelete gui=NONE guifg=" s:STATUS[2] "guibg=NONE"
exe "hi DiffText gui=NONE guifg=" s:STATUS[0] "guibg=NONE"

" Completion menu.
exe "hi Pmenu gui=NONE guifg=" s:STAR[0] "guibg=" s:SKY[2]
exe "hi PmenuSbar gui=NONE guifg=NONE guibg=" s:SKY[0]
exe "hi PmenuSel gui=NONE guifg=" s:STAR[1] "guibg=" s:SKY[4]
exe "hi PmenuThumb gui=NONE guifg=NONE guibg=" s:SKY[1]

" Spelling.
exe "hi SpellBad gui=undercurl guisp=NONE guifg=" s:STATUS[2] "guibg=NONE"
exe "hi SpellCap gui=undercurl guisp=NONE guifg=" s:STATUS[2] "guibg=NONE"
exe "hi SpellLocal gui=undercurl guisp=NONE guifg=" s:STATUS[1] "guibg=NONE"
exe "hi SpellRare gui=undercurl guisp=NONE guifg=" s:STATUS[1] "guibg=NONE"
