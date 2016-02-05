hi clear

syntax reset

let g:colors_name = 'sky'

" Color palette, locally scoped.
let s:EARTH = '#8D6E63'
let s:SKY = ['#00191a', '#003133', '#006064', '#0097A7', '#00BCD4']
let s:STAR = ['#e0e0e0', '#f5f5f5']
let s:STATUS = ['#80c684', '#f5be19', '#f44034']

" Default, no background is set to allow transparency.
hi Normal gui=NONE guifg=s:STAR[0] guibg=NONE

" Editing.
hi Cursor gui=NONE guifg=s:STAR[1] guibg=s:SKY[4]
hi CursorLine gui=NONE guifg=NONE guibg=s:SKY[0]
hi CursorLineNr gui=NONE guifg=s:SKY[4] guibg=s:SKY[0]
hi LineNr gui=NONE guifg=s:SKY[2] guibg=NONE

" Number column.
hi CursorColumn gui=NONE guifg=NONE guibg=s:SKY[1]
hi FoldColumn gui=NONE guifg=s:SKY[2] guibg=NONE
hi Folded gui=NONE guifg=s:SKY[2] guibg=NONE
hi SignColumn gui=NONE guifg=s:SKY[2] guibg=NONE

" Window/tab delimiters.
hi ColorColumn gui=NONE guifg=s:SKY[4] guibg=s:SKY[0]
hi TabLine gui=NONE guifg=NONE guibg=s:SKY[0]
hi TabLineFill gui=NONE guifg=NONE guibg=s:SKY[0]
hi TabLineSel gui=NONE guifg=NONE guibg=s:SKY[2]
hi VertSplit gui=NONE guifg=s:SKY[2] guibg=NONE

" File navigation/searching.
hi Directory gui=NONE guifg=s:EARTH guibg=NONE
hi IncSearch gui=NONE guifg=s:SKY[4] guibg=NONE
hi Search gui=NONE guifg=s:SKY[4] guibg=NONE

" Prompt/status.
hi ModeMsg gui=NONE guifg=s:SKY[2] guibg=NONE
hi MoreMsg gui=NONE guifg=s:SKY[2] guibg=NONE
hi Question gui=NONE guifg=s:EARTH guibg=NONE
hi StatusLine gui=NONE guifg=NONE guibg=s:SKY[0]
hi StatusLineNC gui=NONE guifg=NONE guibg=s:SKY[0]
hi Title gui=NONE guifg=s:SKY[4] guibg=NONE
hi WildMenu gui=NONE guifg=s:STAR[1] guibg=s:SKY[4]

" Visual aid.
hi Conceal gui=NONE guifg=s:SKY[2] guibg=NONE
hi Error gui=NONE guifg=s:EARTH guibg=NONE
hi ErrorMsg gui=NONE guifg=s:STATUS[2] guibg=NONE
hi Ignore gui=NONE guifg=s:SKY[2] guibg=NONE
hi MatchParen gui=NONE guifg=NONE guibg=s:SKY[1]
hi NonText gui=NONE guifg=s:SKY[2] guibg=NONE
hi SpecialKey gui=NONE guifg=s:EARTH guibg=NONE
hi Todo gui=NONE guifg=s:SKY[4] guibg=NONE
hi Underlined gui=NONE guifg=s:SKY[2] guibg=NONE
hi Visual gui=NONE guifg=s:STAR[1] guibg=s:SKY[2]
hi VisualNOS gui=NONE guifg=NONE guibg=s:SKY[2]
hi WarningMsg gui=NONE guifg=s:STATUS[1] guibg=NONE

" Variable types.
hi Boolean gui=NONE guifg=s:EARTH guibg=NONE
hi Character gui=NONE guifg=s:EARTH guibg=NONE
hi Constant gui=NONE guifg=s:SKY[2] guibg=NONE
hi Float gui=NONE guifg=s:EARTH guibg=NONE
hi Function gui=NONE guifg=s:SKY[4] guibg=NONE
hi Identifier gui=NONE guifg=s:STAR[0] guibg=NONE
hi Number gui=NONE guifg=s:EARTH guibg=NONE
hi String gui=NONE guifg=s:SKY[4] guibg=NONE
hi StringDelimiter gui=NONE guifg=s:SKY[4] guibg=NONE

" Language constructs.
hi Comment gui=NONE guifg=s:SKY[3] guibg=NONE
hi Conditional gui=NONE guifg=s:EARTH guibg=NONE
hi Debug gui=NONE guifg=s:EARTH guibg=NONE
hi Delimiter gui=NONE guifg=s:SKY[4] guibg=NONE
hi Exception gui=NONE guifg=s:EARTH guibg=NONE
hi Include gui=NONE guifg=s:EARTH guibg=NONE
hi Keyword gui=NONE guifg=s:EARTH guibg=NONE
hi Label gui=NONE guifg=s:EARTH guibg=NONE
hi Noise gui=NONE guifg=s:SKY[4] guibg=NONE
hi Operator gui=NONE guifg=s:EARTH guibg=NONE
hi PreProc gui=NONE guifg=s:EARTH guibg=NONE
hi Repeat gui=NONE guifg=s:EARTH guibg=NONE
hi Special gui=NONE guifg=s:EARTH guibg=NONE
hi SpecialChar gui=NONE guifg=s:EARTH guibg=NONE
hi Statement gui=NONE guifg=s:EARTH guibg=NONE
hi StorageClass gui=NONE guifg=s:EARTH guibg=NONE
hi Structure gui=NONE guifg=s:EARTH guibg=NONE
hi Type gui=NONE guifg=s:EARTH guibg=NONE

" Diffing.
hi DiffAdd gui=NONE guifg=s:STATUS[0] guibg=NONE
hi DiffChange gui=NONE guifg=NONE guibg=s:SKY[0]
hi DiffDelete gui=NONE guifg=s:STATUS[2] guibg=NONE
hi DiffText gui=NONE guifg=s:STATUS[0] guibg=NONE

" Completion menu.
hi Pmenu gui=NONE guifg=s:STAR[0] guibg=s:SKY[2]
hi PmenuSbar gui=NONE guifg=NONE guibg=s:SKY[0]
hi PmenuSel gui=NONE guifg=s:STAR[1] guibg=s:SKY[4]
hi PmenuThumb gui=NONE guifg=NONE guibg=s:SKY[1]

" Spelling.
hi SpellBad gui=undercurl guisp=NONE guifg=s:STATUS[2] guibg=NONE
hi SpellCap gui=undercurl guisp=NONE guifg=s:STATUS[2] guibg=NONE
hi SpellLocal gui=undercurl guisp=NONE guifg=s:STATUS[1] guibg=NONE
hi SpellRare gui=undercurl guisp=NONE guifg=s:STATUS[1] guibg=NONE
