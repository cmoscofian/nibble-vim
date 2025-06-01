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

function s:NibbleBlackBg()
	call s:hi("Normal", s:bright_white, s:black, s:attr_none)
	call s:hi("NormalFloat", s:bright_white, s:black, s:attr_none)
	call s:hi("NormalNC", s:bright_white, s:black, s:attr_none)
endfunction

function s:NibbleBlueBg()
	call s:hi("Normal", s:bright_white, s:blue, s:attr_none)
	call s:hi("NormalFloat", s:bright_white, s:blue, s:attr_none)
	call s:hi("NormalNC", s:bright_white, s:blue, s:attr_none)
endfunction

if !exists(":NibbleBlack")
	command -nargs=0 NibbleBlack :call s:NibbleBlackBg()
endif

if !exists(":NibbleBlue")
	command -nargs=0 NibbleBlue :call s:NibbleBlueBg()
endif
" }}}

" Palette setup {{{
" Standard system colors
let s:black          = ["#000000", 16]
let s:red            = ["#800000", 88]
let s:green          = ["#008000", 28]
let s:yellow         = ["#808000", 100]
let s:blue           = ["#000080", 18]
let s:magenta        = ["#800080", 90]
let s:cyan           = ["#008080", 30]
let s:white          = ["#c0c0c0", 251]
" Bright system colors
let s:bright_black   = ["#808080", 238]
let s:bright_red     = ["#ff0000", 196]
let s:bright_green   = ["#00ff00", 46]
let s:bright_yellow  = ["#ffff00", 226]
let s:bright_blue    = ["#0000ff", 21]
let s:bright_magenta = ["#ff00ff", 201]
let s:bright_cyan    = ["#00ffff", 51]
let s:bright_white   = ["#ffffff", 231]

let s:color_none     = ["NONE", "NONE"]

let s:attr_none             = "NONE"
let s:attr_bold             = "bold"
let s:attr_italic           = "italic"
let s:attr_reverse          = "reverse"
let s:attr_standout         = "standout"
let s:attr_underline        = "undercurl"
let s:attr_strikethrough    = "strikethrough"

function! s:hi(group, fg, bg, attr)
	execute "highlight " . a:group .
				\ " guifg=" . get(a:fg, 0, "NONE") .
				\ " guibg=" . get(a:bg, 0, "NONE") .
				\ " gui=" . a:attr .
				\ " ctermfg=" . get(a:fg, 1, "NONE") .
				\ " ctermbg=" . get(a:bg, 1, "NONE") .
				\ " cterm=" . a:attr
endfunction
" }}}

"===============================================================================
"                                     Vim
"===============================================================================
" Core editor highlights {{{
call s:hi("Bold", s:color_none, s:color_none, s:attr_bold)
call s:hi("ColorColumn", s:color_none, s:bright_black, s:attr_none)
call s:hi("Cursor", s:blue, s:bright_white, s:attr_none)
call s:hi("CursorColumn", s:color_none, s:bright_black, s:attr_none)
call s:hi("CursorIM", s:blue, s:bright_white, s:attr_none)
call s:hi("CursorLine", s:color_none, s:color_none, s:attr_underline)
call s:hi("CursorLineNr", s:bright_yellow, s:color_none, s:attr_underline)
call s:hi("DiffAdd", s:bright_white, s:green, s:attr_none)
call s:hi("DiffChange", s:bright_white, s:yellow, s:attr_none)
call s:hi("DiffDelete", s:bright_white, s:red, s:attr_none)
call s:hi("DiffText", s:bright_white, s:bright_blue, s:attr_none)
call s:hi("Directory", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("EndOfBuffer", s:bright_black, s:color_none, s:attr_none)
call s:hi("ErrorMsg", s:bright_white, s:red, s:attr_none)
call s:hi("FoldColumn", s:bright_white, s:cyan, s:attr_none)
call s:hi("Folded", s:bright_white, s:cyan, s:attr_none)
call s:hi("IncSearch", s:bright_white, s:cyan, s:attr_none)
call s:hi("Italic", s:color_none, s:color_none, s:attr_italic)
call s:hi("LineNr", s:white, s:color_none, s:attr_none)
call s:hi("LineNrAbove", s:bright_black, s:color_none, s:attr_none)
call s:hi("LineNrBelow", s:bright_black, s:color_none, s:attr_none)
call s:hi("MatchParen", s:bright_magenta, s:color_none, s:attr_none)
call s:hi("Menu", s:blue, s:white, s:attr_none)
call s:hi("ModeMsg", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("MoreMsg", s:cyan, s:color_none, s:attr_none)
call s:hi("MsgArea", s:white, s:color_none, s:attr_none)
call s:hi("MsgSeparator", s:color_none, s:color_none, s:attr_none)
call s:hi("NonText", s:bright_black, s:color_none, s:attr_none)
call s:hi("Normal", s:bright_white, s:blue, s:attr_none)
call s:hi("NormalFloat", s:bright_white, s:blue, s:attr_none)
call s:hi("NormalNC", s:bright_white, s:blue, s:attr_none)
call s:hi("Pmenu", s:blue, s:white, s:attr_none)
call s:hi("PmenuSbar", s:color_none, s:bright_black, s:attr_none)
call s:hi("PmenuSel", s:bright_white, s:cyan, s:attr_none)
call s:hi("PmenuThumb", s:color_none, s:cyan, s:attr_none)
call s:hi("Question", s:color_none, s:color_none, s:attr_bold)
call s:hi("QuickFixLine", s:bright_white, s:cyan, s:attr_none)
call s:hi("Scrollbar", s:cyan, s:bright_black, s:attr_none)
call s:hi("Search", s:bright_white, s:cyan, s:attr_none)
call s:hi("SignColumn", s:color_none, s:color_none, s:attr_none)
call s:hi("SpecialKey", s:yellow, s:color_none, s:attr_none)
call s:hi("SpellBad", s:bright_white, s:red, s:attr_italic)
call s:hi("SpellCap", s:color_none, s:color_none, s:attr_none)
call s:hi("SpellLocal", s:color_none, s:color_none, s:attr_none)
call s:hi("SpellRare", s:color_none, s:color_none, s:attr_italic)
call s:hi("StatusLine", s:bright_white, s:cyan, s:attr_none)
call s:hi("StatusLineNC", s:bright_white, s:bright_black, s:attr_none)
call s:hi("Substitute", s:bright_white, s:cyan, s:attr_none)
call s:hi("TabLine", s:bright_white, s:bright_black, s:attr_none)
call s:hi("TabLineFill", s:color_none, s:color_none, s:attr_none)
call s:hi("TabLineSel", s:bright_white, s:cyan, s:attr_none)
call s:hi("TermCursor", s:blue, s:color_none, s:attr_none)
call s:hi("TermCursorNC", s:blue, s:color_none, s:attr_none)
call s:hi("Title", s:bright_green, s:color_none, s:attr_none)
call s:hi("Underline", s:color_none, s:color_none, s:attr_underline)
call s:hi("Variable", s:color_none, s:color_none, s:attr_none)
call s:hi("VertSplit", s:bright_black, s:color_none, s:attr_none)
call s:hi("Visual", s:bright_white, s:cyan, s:attr_none)
call s:hi("VisualNOS", s:bright_white, s:cyan, s:attr_none)
call s:hi("WarningMsg", s:blue, s:bright_yellow, s:attr_none)
call s:hi("bright_whitespace", s:bright_black, s:color_none, s:attr_none)
call s:hi("WildMenu", s:bright_white, s:cyan, s:attr_none)
call s:hi("WinBar", s:color_none, s:white, s:attr_none)
call s:hi("WinBarNC", s:color_none, s:white, s:attr_none)
call s:hi("lCursor", s:black, s:bright_white, s:attr_none)

" Diff legacy compatibility
highlight! link DiffAdded DiffAdd
highlight! link DiffChanged DiffChange
highlight! link DiffRemoved DiffDelete

" Underline legacy compatibility
call s:hi("Underlined", s:color_none, s:color_none, s:attr_underline)

" TODO: Needs further investigation before settling on the values of these.
" call s:hi("Conceal", s:color_none, s:color_none, s:attr_none)
" }}}

" Language syntax highlights {{{
call s:hi("Boolean", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("Character", s:bright_yellow, s:color_none, s:attr_none)
call s:hi("Comment", s:bright_black, s:color_none, s:attr_none)
call s:hi("Conditional", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("Constant", s:white, s:color_none, s:attr_none)
call s:hi("Decorator", s:bright_green, s:color_none, s:attr_none)
call s:hi("Define", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("Delimiter", s:white, s:color_none, s:attr_none)
call s:hi("Error", s:bright_white, s:red, s:attr_none)
call s:hi("Exception", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("Float", s:bright_magenta, s:color_none, s:attr_none)
call s:hi("Function", s:bright_green, s:color_none, s:attr_none)
call s:hi("Identifier", s:color_none, s:color_none, s:attr_none)
call s:hi("Include", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("Integer", s:bright_magenta, s:color_none, s:attr_none)
call s:hi("Keyword", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("Label", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("Number", s:bright_magenta, s:color_none, s:attr_none)
call s:hi("Operator", s:white, s:color_none, s:attr_none)
call s:hi("PreProc", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("Repeat", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("Special", s:bright_yellow, s:color_none, s:attr_none)
call s:hi("SpecialChar", s:bright_magenta, s:color_none, s:attr_none)
call s:hi("SpecialComment", s:bright_white, s:color_none, s:attr_underline)
call s:hi("Statement", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("StorageClass", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("String", s:bright_yellow, s:color_none, s:attr_none)
call s:hi("Structure", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("Tag", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("Todo", s:bright_white, s:color_none, s:attr_underline)
call s:hi("Type", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("Typedef", s:bright_cyan, s:color_none, s:attr_none)
" }}}

"===============================================================================
"                                    Neovim
"===============================================================================
if has("nvim")
" Neovim highlights {{{
highlight! link healthError DiffDelete
highlight! link healthSuccess DiffAdd
highlight! link healthWarning DiffChange
" }}}

" Neovim LSP highlights {{{
call s:hi("LspSignatureActiveParameter", s:bright_yellow, s:color_none, s:attr_underline)
highlight! link LspReferenceText Visual
highlight! link LspReferenceRead Visual
highlight! link LspReferenceWrite Visual
" }}}

" Neovim diagnostics highlights {{{
call s:hi("DiagnosticOk", s:bright_green, s:color_none, s:attr_none)
call s:hi("DiagnosticError", s:bright_red, s:color_none, s:attr_none)
call s:hi("DiagnosticHint", s:green, s:color_none, s:attr_none)
call s:hi("DiagnosticInfo", s:cyan, s:color_none, s:attr_none)
call s:hi("DiagnosticWarn", s:bright_yellow, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextOk", s:green, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextError", s:red, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextHint", s:green, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextInfo", s:cyan, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextWarn", s:yellow, s:color_none, s:attr_none)
call s:hi("DiagnosticUnderlineOk", s:bright_green, s:color_none, s:attr_underline)
call s:hi("DiagnosticUnderlineError", s:bright_red, s:color_none, s:attr_underline)
call s:hi("DiagnosticUnderlineHint", s:green, s:color_none, s:attr_underline)
call s:hi("DiagnosticUnderlineInfo", s:cyan, s:color_none, s:attr_underline)
call s:hi("DiagnosticUnderlineWarn", s:bright_yellow, s:color_none, s:attr_underline)
call s:hi("DiagnosticFloatingOk", s:bright_green, s:color_none, s:attr_none)
call s:hi("DiagnosticFloatingError", s:bright_red, s:color_none, s:attr_none)
call s:hi("DiagnosticFloatingHint", s:green, s:color_none, s:attr_none)
call s:hi("DiagnosticFloatingInfo", s:cyan, s:color_none, s:attr_none)
call s:hi("DiagnosticFloatingWarn", s:bright_yellow, s:color_none, s:attr_none)
call s:hi("DiagnosticSignOk", s:bright_green, s:color_none, s:attr_none)
call s:hi("DiagnosticSignError", s:bright_red, s:color_none, s:attr_none)
call s:hi("DiagnosticSignHint", s:green, s:color_none, s:attr_none)
call s:hi("DiagnosticSignInfo", s:cyan, s:color_none, s:attr_none)
call s:hi("DiagnosticSignWarn", s:bright_yellow, s:color_none, s:attr_none)
" }}}

" Neovim codelens highlights {{{
call s:hi("LspCodeLens", s:bright_black, s:color_none, s:attr_none)
call s:hi("LspCodeLensSeparator", s:bright_black, s:color_none, s:attr_none)
" }}}

" Treesitter highlights {{{
call s:hi("TSConstBuiltin", s:bright_magenta, s:color_none, s:attr_none)
call s:hi("TSConstMacro", s:bright_magenta, s:color_none, s:attr_none)
call s:hi("TSStrike", s:color_none, s:color_none, s:attr_strikethrough)
call s:hi("TSURI", s:bright_magenta, s:color_none, s:attr_underline)
call s:hi("TSVariableBuiltin", s:bright_magenta, s:color_none, s:attr_none)

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
highlight! link TSEnvironment Normal
highlight! link TSEnvironmentName Normal
highlight! link TSException Exception
highlight! link TSField Normal
highlight! link TSFloat Float
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Function
highlight! link TSFunction Function
highlight! link TSInclude Include
highlight! link TSKeyword Keyword
highlight! link TSKeywordFunction Keyword
highlight! link TSKeywordOperator Keyword
highlight! link TSKeywordReturn Keyword
highlight! link TSLabel Label
highlight! link TSLiteral String
highlight! link TSMath Operator
highlight! link TSMethod Function
highlight! link TSNamespace Include
highlight! link TSNone Constant
highlight! link TSNote SpecialComment
highlight! link TSNumber Number
highlight! link TSOperator Operator
highlight! link TSParameter Normal
highlight! link TSParameterReference Normal
highlight! link TSProperty Normal
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
highlight! link TSSymbol Normal
highlight! link TSTag Tag
highlight! link TSTagAttribute Decorator
highlight! link TSTagDelimiter Delimiter
highlight! link TSText Normal
highlight! link TSTextReference Statement
highlight! link TSTitle Title
highlight! link TSType Type
highlight! link TSTypeBuiltin Type
highlight! link TSUnderline Underline
highlight! link TSVariable Variable
highlight! link TSWarning WarningMsg
" }}}

" Treesitter @highlights {{{
highlight! link @attribute TSAttribute
highlight! link @boolean TSBoolean
highlight! link @character TSCharacter
highlight! link @character.special SpecialChar
highlight! link @comment TSComment
highlight! link @conditional TSConditional
highlight! link @constant TSConstant
highlight! link @constant.builtin TSConstBuiltin
highlight! link @constant.macro TSConstMacro
highlight! link @constructor TSConstructor
highlight! link @debug Special
highlight! link @define TSInclude
highlight! link @exception TSException
highlight! link @field TSField
highlight! link @float TSFloat
highlight! link @function TSFunction
highlight! link @function.builtin TSFuncBuiltin
highlight! link @function.macro TSFuncMacro
highlight! link @include TSInclude
highlight! link @keyword TSKeyword
highlight! link @keyword.function TSKeywordFunction
highlight! link @keyword.operator TSKeywordOperator
highlight! link @keyword.return TSKeywordReturn
highlight! link @label TSLabel
highlight! link @macro TSFuncMacro
highlight! link @method TSMethod
highlight! link @namespace TSNamespace
highlight! link @number TSNumber
highlight! link @operator TSOperator
highlight! link @parameter TSParameter
highlight! link @preproc PreProc
highlight! link @property TSProperty
highlight! link @punctuation TSPunctDelimiter
highlight! link @punctuation.bracket TSPunctBracket
highlight! link @punctuation.delimiter TSPunctDelimiter
highlight! link @punctuation.special TSPunctSpecial
highlight! link @repeat TSRepeat
highlight! link @string TSString
highlight! link @string.escape TSStringEscape
highlight! link @structure TSStructure
highlight! link @tag TSTag
highlight! link @tag.attribute TSTagAttribute
highlight! link @tag.builtin TSTag
highlight! link @tag.delimiter TSTagDelimiter
highlight! link @text TSText
highlight! link @text.underline TSUnderline
highlight! link @text.warning TSWarning
highlight! link @todo Todo
highlight! link @type TSType
highlight! link @type.builtin TSTypeBuiltin
highlight! link @type.definition TSType
highlight! link @type.qualifier TSType
highlight! link @variable TSVariable
highlight! link @variable.builtin TSVariableBuiltin

highlight! link @markup @text
highlight! link @markup.heading TSTitle
highlight! link @markup.italic TSEmphasis
highlight! link @markup.link.label TSUnderline
highlight! link @markup.list @punctuation.special
highlight! link @markup.raw @text
highlight! link @markup.strikethrough TSStrike
highlight! link @markup.strong TSStrong
highlight! link @module @namespace
highlight! link @number.float @float
highlight! link @string.regexp TSStringRegex
highlight! link @string.special.symbol TSSymbol
highlight! link @variable.member @field
highlight! link @variable.parameter @parameter

call s:hi("@markup.link", s:bright_green, s:color_none, s:attr_underline)
call s:hi("@markup.link.uri", s:bright_green, s:color_none, s:attr_underline)
call s:hi("@error", s:red, s:color_none, s:attr_none)

" TODO: Needs further investigation before settling on the values of these.
highlight! link @storageclass TSType
" }}}

" Treesitter language css highlights {{{
call s:hi("cssTSProperty", s:bright_green, s:color_none, s:attr_none)
" }}}

" Treesitter language java highlights {{{
call s:hi("javaTSType", s:bright_green, s:color_none, s:attr_none)
" }}}

" Treesitter language javascript highlights {{{
call s:hi("javascriptTSConstructor", s:color_none, s:color_none, s:attr_none)
" }}}

" Lsp Semantic Tokens type highlights {{{
highlight! link @lsp.type.class @storageclass
highlight! link @lsp.type.comment @comment
highlight! link @lsp.type.decorator Decorator
highlight! link @lsp.type.enumMember @constant
highlight! link @lsp.type.function @function
highlight! link @lsp.type.keyword @keyword
highlight! link @lsp.type.macro @macro
highlight! link @lsp.type.method @method
highlight! link @lsp.type.namespace @namespace
highlight! link @lsp.type.number @number
highlight! link @lsp.type.operator @operator
highlight! link @lsp.type.parameter @parameter
highlight! link @lsp.type.property @property
highlight! link @lsp.type.regexp TSStringRegex
highlight! link @lsp.type.string @string
highlight! link @lsp.type.struct @structure
highlight! link @lsp.type.type @type
highlight! link @lsp.type.typeParameter @parameter
highlight! link @lsp.type.variable @variable

" TODO: Needs further investigation before settling on the values of these.
highlight! link @lsp.type.enum @type
highlight! link @lsp.type.event @type
highlight! link @lsp.type.interface @type
highlight! link @lsp.type.modifier @type
" }}}

"===============================================================================
"                                Neovim Plugins
"===============================================================================
" Telescope highlights {{{
call s:hi("TelescopeMatching", s:bright_magenta, s:color_none, s:attr_none)
call s:hi("TelescopePromptPrefix", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("TelescopeSelectionCaret", s:bright_cyan, s:color_none, s:attr_none)
" }}}

" Gitsigns highlights {{{
call s:hi("GitSignsAdd", s:bright_green, s:color_none, s:attr_none)
call s:hi("GitSignsChange", s:bright_yellow, s:color_none, s:attr_none)
call s:hi("GitSignsDelete", s:bright_red, s:color_none, s:attr_none)
highlight! link GitSignsAddNr DiffAdd
highlight! link GitSignsChangeNr DiffChange
highlight! link GitSignsDeleteNr DiffDelete
highlight! link GitSignsAddLn DiffAdd
highlight! link GitSignsChangeLn DiffChange
highlight! link GitSignsDeleteLn DiffDelete
highlight! link GitSignsAddInline DiffAdd
highlight! link GitSignsChangeInline DiffChange
highlight! link GitSignsDeleteInline DiffDelete
highlight! link GitSignsAddLnInline DiffAdd
highlight! link GitSignsChangeLnInline DiffChange
highlight! link GitSignsDeleteLnInline DiffDelete
highlight! link GitSignsCurrentLineBlame Comment
" }}}
"
" Dap highlights {{{
call s:hi("DapBreakpoint", s:bright_red, s:color_none, s:attr_none)
call s:hi("DapBreakpointCondition", s:bright_red, s:color_none, s:attr_none)
call s:hi("DapBreakpointRejected", s:bright_red, s:color_none, s:attr_none)
call s:hi("DapBreakpointRejectedLine", s:color_none, s:red, s:attr_none)
call s:hi("DapHitCondition", s:magenta, s:color_none, s:attr_none)
call s:hi("DapLogPoint", s:bright_magenta, s:color_none, s:attr_none)
call s:hi("DapStopped", s:bright_magenta, s:color_none, s:attr_none)
call s:hi("DapStoppedLine", s:blue, s:white, s:attr_none)
" }}}

" Dap-UI highlights {{{
call s:hi("DapUIBreakpointsCurrentLine", s:bright_green, s:color_none, s:attr_none)
call s:hi("DapUIBreakpointsDisabledLine", s:bright_black, s:color_none, s:attr_none)
call s:hi("DapUIBreakpointsInfo", s:white, s:color_none, s:attr_none)
call s:hi("DapUIBreakpointsLine", s:bright_black, s:color_none, s:attr_none)
call s:hi("DapUIBreakpointsPath", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("DapUIDecoration", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("DapUIFloatBorder", s:color_none, s:color_none, s:attr_none)
call s:hi("DapUIFrameName", s:white, s:color_none, s:attr_none)
call s:hi("DapUILineNumber", s:bright_black, s:color_none, s:attr_none)
call s:hi("DapUIModifiedValue", s:bright_magenta, s:color_none, s:attr_none)
call s:hi("DapUIPlayPause", s:green, s:white, s:attr_none)
call s:hi("DapUIPlayPauseNC", s:green, s:white, s:attr_none)
call s:hi("DapUIRestart", s:yellow, s:white, s:attr_none)
call s:hi("DapUIRestartNC", s:yellow, s:white, s:attr_none)
call s:hi("DapUIScope", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("DapUISource", s:bright_black, s:color_none, s:attr_none)
call s:hi("DapUIStepBack", s:blue, s:white, s:attr_none)
call s:hi("DapUIStepBackNC", s:blue, s:white, s:attr_none)
call s:hi("DapUIStepInto", s:blue, s:white, s:attr_none)
call s:hi("DapUIStepIntoNC", s:blue, s:white, s:attr_none)
call s:hi("DapUIStepOut", s:blue, s:white, s:attr_none)
call s:hi("DapUIStepOutNC", s:blue, s:white, s:attr_none)
call s:hi("DapUIStepOver", s:blue, s:white, s:attr_none)
call s:hi("DapUIStepOverNC", s:blue, s:white, s:attr_none)
call s:hi("DapUIStop", s:red, s:white, s:attr_none)
call s:hi("DapUIStopNC", s:red, s:white, s:attr_none)
call s:hi("DapUIStoppedThread", s:bright_green, s:color_none, s:attr_none)
call s:hi("DapUIThread", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("DapUIType", s:bright_cyan, s:color_none, s:attr_none)
call s:hi("DapUIUnavailable", s:bright_black, s:white, s:attr_none)
call s:hi("DapUIUnavailableNC", s:bright_black, s:white, s:attr_none)
call s:hi("DapUIValue", s:color_none, s:color_none, s:attr_none)
call s:hi("DapUIVariable", s:white, s:color_none, s:attr_none)
call s:hi("DapUIWatchesEmpty", s:white, s:color_none, s:attr_none)
call s:hi("DapUIWatchesError", s:bright_red, s:color_none, s:attr_none)
call s:hi("DapUIWatchesValue", s:bright_cyan, s:color_none, s:attr_none)
" }}}
endif

" vim: sw=4 sts=4 ts=4 fdm=marker fmr={{{,}}} noet tw=80
