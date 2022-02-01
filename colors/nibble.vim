"
" Author:       Charles Moscofian <charlesmoscofian@hotmail.com>
" Project:      Nibble Vim (Nibble)
" Repository:   https://github.com/cmoscofian/nibble-vim
" License:      MIT

" Default setup {{{
set background=dark

if version > 580
    highlight clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="nibble"
" }}}

" Palette setup {{{
let s:black         = g:nibble#palette.black
let s:white         = g:nibble#palette.white
let s:dark_red      = g:nibble#palette.dred
let s:dark_green    = g:nibble#palette.dgreen
let s:dark_yellow   = g:nibble#palette.dyellow
let s:dark_blue     = g:nibble#palette.dblue
let s:dark_fuchsia  = g:nibble#palette.dfuchsia
let s:dark_cyan     = g:nibble#palette.dcyan
let s:dark_grey     = g:nibble#palette.dgrey
let s:light_red     = g:nibble#palette.lred
let s:light_green   = g:nibble#palette.lgreen
let s:light_yellow  = g:nibble#palette.lyellow
let s:light_blue    = g:nibble#palette.lblue
let s:light_fuchsia = g:nibble#palette.lfuchsia
let s:light_cyan    = g:nibble#palette.lcyan
let s:light_grey    = g:nibble#palette.lgrey
let s:color_none    = ["NONE","NONE"]

let s:attr_none         = "NONE"
let s:attr_bold         = g:nibble#attributes.bold
let s:attr_italic       = g:nibble#attributes.italic
let s:attr_reverse      = g:nibble#attributes.reverse
let s:attr_standout     = g:nibble#attributes.standout
let s:attr_underline    = g:nibble#attributes.underline

function! s:hi(group, fg, bg, attr)
    exec "highlight " . a:group .
                \ " guifg=" . get(a:fg, 0, "NONE") .
                \ " guibg=" . get(a:bg, 0, "NONE") .
                \ " gui=" . a:attr .
                \ " ctermfg=" . get(a:fg, 1, "NONE") .
                \ " ctermbg=" . get(a:bg, 1, "NONE") .
                \ " cterm=" . a:attr
endfunction
" }}}

" Core editor highlights {{{
call s:hi("ColorColumn", s:color_none, s:dark_grey, s:attr_none)
call s:hi("Cursor", s:dark_blue, s:white, s:attr_none)
call s:hi("CursorColumn", s:dark_blue, s:white, s:attr_underline)
call s:hi("CursorIM", s:dark_blue, s:white, s:attr_none)
call s:hi("CursorLine", s:color_none, s:color_none, s:attr_underline)
call s:hi("CursorLineNr", s:light_yellow, s:color_none, s:attr_underline)
call s:hi("DiffAdd", s:white, s:dark_green, s:attr_none)
call s:hi("DiffChange", s:white, s:dark_yellow, s:attr_none)
call s:hi("DiffDelete", s:white, s:dark_red, s:attr_none)
call s:hi("DiffText", s:white, s:dark_cyan, s:attr_none)
call s:hi("Directory", s:light_cyan, s:color_none, s:attr_none)
call s:hi("EndOfBuffer", s:dark_grey, s:color_none, s:attr_none)
call s:hi("ErrorMsg", s:white, s:dark_red, s:attr_none)
call s:hi("FoldColumn", s:white, s:dark_cyan, s:attr_none)
call s:hi("Folded", s:white, s:dark_cyan, s:attr_none)
call s:hi("IncSearch", s:white, s:dark_cyan, s:attr_none)
call s:hi("LineNr", s:light_grey, s:color_none, s:attr_none)
call s:hi("LineNrAbove", s:dark_grey, s:color_none, s:attr_none)
call s:hi("LineNrBelow", s:dark_grey, s:color_none, s:attr_none)
call s:hi("MatchParen", s:light_fuchsia, s:color_none, s:attr_none)
call s:hi("Menu", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("ModeMsg", s:light_cyan, s:color_none, s:attr_none)
call s:hi("MsgArea", s:light_grey, s:color_none, s:attr_none)
call s:hi("MsgSeparator", s:color_none, s:color_none, s:attr_none)
call s:hi("NonText", s:dark_grey, s:color_none, s:attr_none)
call s:hi("Normal", s:white, s:dark_blue, s:attr_none)
call s:hi("NormalFloat", s:white, s:dark_blue, s:attr_none)
call s:hi("NormalNC", s:white, s:dark_blue, s:attr_none)
call s:hi("Pmenu", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("PmenuSbar", s:color_none, s:dark_grey, s:attr_none)
call s:hi("PmenuSel", s:white, s:dark_cyan, s:attr_none)
call s:hi("PmenuThumb", s:color_none, s:dark_cyan, s:attr_none)
call s:hi("Question", s:color_none, s:color_none, s:attr_bold)
call s:hi("QuickFixLine", s:white, s:dark_cyan, s:attr_none)
call s:hi("Scrollbar", s:dark_cyan, s:dark_grey, s:attr_none)
call s:hi("Search", s:white, s:dark_cyan, s:attr_none)
call s:hi("SignColumn", s:color_none, s:color_none, s:attr_none)
call s:hi("SpecialKey", s:dark_yellow, s:color_none, s:attr_none)
call s:hi("SpellBad", s:white, s:dark_red, s:attr_italic)
call s:hi("SpellCap", s:color_none, s:color_none, s:attr_none)
call s:hi("SpellLocal", s:color_none, s:color_none, s:attr_none)
call s:hi("SpellRare", s:color_none, s:color_none, s:attr_italic)
call s:hi("StatusLine", s:white, s:dark_cyan, s:attr_none)
call s:hi("StatusLineNC", s:white, s:dark_grey, s:attr_none)
call s:hi("Substitute", s:white, s:dark_cyan, s:attr_none)
call s:hi("TabLine", s:white, s:dark_grey, s:attr_none)
call s:hi("TabLineFill", s:color_none, s:color_none, s:attr_none)
call s:hi("TabLineSel", s:white, s:dark_cyan, s:attr_none)
call s:hi("TermCursor", s:dark_blue, s:color_none, s:attr_none)
call s:hi("TermCursorNC", s:dark_blue, s:color_none, s:attr_none)
call s:hi("Title", s:light_cyan, s:color_none, s:attr_none)
call s:hi("VertSplit", s:color_none, s:color_none, s:attr_none)
call s:hi("Visual", s:white, s:dark_cyan, s:attr_none)
call s:hi("VisualNOS", s:white, s:dark_cyan, s:attr_none)
call s:hi("WarningMsg", s:dark_blue, s:light_yellow, s:attr_none)
call s:hi("Whitespace", s:dark_grey, s:color_none, s:attr_none)
call s:hi("WildMenu", s:white, s:dark_cyan, s:attr_none)
call s:hi("lCursor", s:dark_blue, s:white, s:attr_none)

" TODO: Needs further understanding before setting these.
" call s:hi("Conceal", s:color_none, s:color_none, s:attr_none)
" call s:hi("MoreMsg", s:color_none, s:color_none, s:attr_none)
" }}}

" Language syntax highlights {{{
call s:hi("Boolean", s:light_cyan, s:color_none, s:attr_none)
call s:hi("Character", s:light_yellow, s:color_none, s:attr_none)
call s:hi("Comment", s:dark_grey, s:color_none, s:attr_none)
call s:hi("Conceal", s:color_none, s:color_none, s:attr_none)
call s:hi("Conditional", s:light_cyan, s:color_none, s:attr_none)
call s:hi("Constant", s:light_yellow, s:color_none, s:attr_none)
call s:hi("Decorator", s:light_green, s:color_none, s:attr_none)
call s:hi("Define", s:light_cyan, s:color_none, s:attr_none)
call s:hi("Delimiter", s:light_grey, s:color_none, s:attr_none)
call s:hi("Error", s:white, s:dark_red, s:attr_none)
call s:hi("Exception", s:light_cyan, s:color_none, s:attr_none)
call s:hi("Float", s:light_fuchsia, s:color_none, s:attr_none)
call s:hi("Function", s:light_green, s:color_none, s:attr_none)
call s:hi("Identifier", s:color_none, s:color_none, s:attr_none)
call s:hi("Include", s:light_cyan, s:color_none, s:attr_none)
call s:hi("Integer", s:light_fuchsia, s:color_none, s:attr_none)
call s:hi("Keyword", s:light_cyan, s:color_none, s:attr_none)
call s:hi("Label", s:light_cyan, s:color_none, s:attr_none)
call s:hi("Number", s:light_fuchsia, s:color_none, s:attr_none)
call s:hi("Operator", s:light_grey, s:color_none, s:attr_none)
call s:hi("PreProc", s:light_cyan, s:color_none, s:attr_none)
call s:hi("Repeat", s:light_cyan, s:color_none, s:attr_none)
call s:hi("Special", s:light_yellow, s:color_none, s:attr_none)
call s:hi("SpecialChar", s:light_fuchsia, s:color_none, s:attr_none)
call s:hi("SpecialComment", s:white, s:color_none, s:attr_underline)
call s:hi("Statement", s:light_cyan, s:color_none, s:attr_none)
call s:hi("StorageClass", s:light_cyan, s:color_none, s:attr_none)
call s:hi("String", s:light_yellow, s:color_none, s:attr_none)
call s:hi("Structure", s:light_cyan, s:color_none, s:attr_none)
call s:hi("Tag", s:light_yellow, s:color_none, s:attr_none)
call s:hi("Todo", s:white, s:color_none, s:attr_underline)
call s:hi("Type", s:light_cyan, s:color_none, s:attr_none)
call s:hi("Typedef", s:light_cyan, s:color_none, s:attr_none)
" }}}

" Neovim highlights {{{
highlight! link healthError DiffDelete
highlight! link healthSuccess DiffAdd
highlight! link healthWarning DiffChange
" }}}

" Neovim LSP highlights {{{
call s:hi("LspSignatureActiveParameter", s:light_yellow, s:color_none, s:attr_underline)
highlight! link LspReferenceText Visual
highlight! link LspReferenceRead Visual
highlight! link LspReferenceWrite Visual
" }}}

" Neovim diagnostics highlights {{{
call s:hi("DiagnosticError", s:light_red, s:color_none, s:attr_none)
call s:hi("DiagnosticHint", s:light_green, s:, s:attr_none)
call s:hi("DiagnosticInfo", s:light_cyan, s:color_none, s:attr_none)
call s:hi("DiagnosticWarn", s:light_yellow, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextError", s:dark_red, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextHint", s:dark_green, s:, s:attr_none)
call s:hi("DiagnosticVirtualTextInfo", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextWarn", s:dark_yellow, s:color_none, s:attr_none)
call s:hi("DiagnosticUnderlineError", s:light_red, s:color_none, s:attr_underline)
call s:hi("DiagnosticUnderlineHint", s:light_green, s:, s:attr_underline)
call s:hi("DiagnosticUnderlineInfo", s:light_cyan, s:color_none, s:attr_underline)
call s:hi("DiagnosticUnderlineWarn", s:light_yellow, s:color_none, s:attr_underline)
call s:hi("DiagnosticFloatingError", s:light_red, s:color_none, s:attr_none)
call s:hi("DiagnosticFloatingHint", s:light_green, s:, s:attr_none)
call s:hi("DiagnosticFloatingInfo", s:light_cyan, s:color_none, s:attr_none)
call s:hi("DiagnosticFloatingWarn", s:light_yellow, s:color_none, s:attr_none)
call s:hi("DiagnosticSignError", s:light_red, s:color_none, s:attr_none)
call s:hi("DiagnosticSignHint", s:light_green, s:, s:attr_none)
call s:hi("DiagnosticSignInfo", s:light_cyan, s:color_none, s:attr_none)
call s:hi("DiagnosticSignWarn", s:light_yellow, s:color_none, s:attr_none)
" }}}
"
" Neovim codelens highlights {{{
call s:hi("LspCodeLens", s:dark_grey, s:color_none, s:attr_none)
call s:hi("LspCodeLensSeparator", s:dark_grey, s:color_none, s:attr_none)
" }}}

" Treesitter highlights {{{
call s:hi("TSConstBuiltin", s:light_fuchsia, s:color_none, s:attr_none)
call s:hi("TSConstMacro", s:light_fuchsia, s:color_none, s:attr_none)
call s:hi("TSVariableBuiltin", s:light_fuchsia, s:color_none, s:attr_none)

highlight! link TSAnnotation Annotation
highlight! link TSAttribute PreProc
highlight! link TSBoolean Boolean
highlight! link TSCharacter Character
highlight! link TSComment Comment
highlight! link TSConditional Conditional
highlight! link TSConstant Constant
highlight! link TSConstructor Function
highlight! link TSDanger ErrorMsg
highlight! link TSEmphasis Italic
highlight! link TSEnvironment Macro
highlight! link TSEnvironmentName Type
highlight! link TSException Exception
highlight! link TSField Identifier
highlight! link TSFloat Float
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Function
highlight! link TSFunction Function
highlight! link TSInclude Include
highlight! link TSKeyword Keyword
highlight! link TSKeywordFunction Keyword
highlight! link TSKeywordOperator Operator
highlight! link TSKeywordReturn Keyword
highlight! link TSLabel Label
highlight! link TSLiteral String
highlight! link TSMath Operator
highlight! link TSMethod Function
highlight! link TSNamespace Include
highlight! link TSNote SpecialComment
highlight! link TSNumber Number
highlight! link TSOperator Operator
highlight! link TSParameter Identifier
highlight! link TSParameterReference Identifier
highlight! link TSPunctBracket Delimiter
highlight! link TSPunctDelimiter Delimiter
highlight! link TSPunctSpecial Delimiter
highlight! link TSRepeat Repeat
highlight! link TSString String
highlight! link TSStringEscape SpecialChar
highlight! link TSStringRegex SpecialChar
highlight! link TSStringSpecial SpecialChar
highlight! link TSStrong Bold
highlight! link TSStructure Structure
highlight! link TSSymbol Identifier
highlight! link TSTag Label
highlight! link TSTagAttribute Decorator
highlight! link TSTagDelimiter Delimiter
highlight! link TSText TSNone
highlight! link TSTextReference Normal
highlight! link TSTitle Title
highlight! link TSType Type
highlight! link TSTypeBuiltin Type
highlight! link TSURI Underlined
highlight! link TSUnderline Underline
highlight! link TSVariable Variable
highlight! link TSWarning WarningMsg
" }}}

"===============================================================================
"                                   Plugins
"===============================================================================
" Telescope highlights {{{
call s:hi("TelescopeMatching", s:light_fuchsia, s:color_none, s:attr_none)
highlight! link TelescopePromptPrefix Statement
highlight! link TelescopeSelectionCaret Statement
" }}}

" vim: set sw=4 sts=4 ts=4 fdm=marker fmr={{{,}}} noet
