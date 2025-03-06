"
" Author:       Charles Moscofian <charlesmoscofian@hotmail.com>
" Project:      Nibble Vim (Nibble)
" Repository:   https://github.com/cmoscofian/nibble-vim
" License:      MIT

" Default setup {{{
set background=light

if version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let g:colors_name="nibblelight"

if exists(":NibbleBlack")
	delcommand NibbleBlack
endif

if exists(":NibbleBlue")
	delcommand NibbleBlue
endif

" Palette setup {{{
let s:black         = ["#000000", 16]
let s:white         = ["#ffffff", 255]
let s:dark_red      = ["#800000", 88]
let s:dark_green    = ["#008000", 28]
let s:dark_yellow   = ["#808000", 100]
let s:dark_blue     = ["#000080", 18]
let s:dark_fuchsia  = ["#800080", 90]
let s:dark_cyan     = ["#008080", 30]
let s:dark_grey     = ["#404040", 239]
let s:light_red     = ["#ff0000", 196]
let s:light_green   = ["#00ff00", 46]
let s:light_yellow  = ["#ffff00", 226]
let s:light_blue    = ["#0000ff", 21]
let s:light_fuchsia = ["#ff00ff", 201]
let s:light_cyan    = ["#00ffff", 51]
let s:light_grey    = ["#c0c0c0", 251]
let s:color_none    = ["NONE","NONE"]

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
call s:hi("ColorColumn", s:color_none, s:light_grey, s:attr_none)
call s:hi("Cursor", s:white, s:black, s:attr_none)
call s:hi("CursorColumn", s:color_none, s:light_grey, s:attr_none)
call s:hi("CursorIM", s:white, s:black, s:attr_none)
call s:hi("CursorLine", s:color_none, s:color_none, s:attr_underline)
call s:hi("CursorLineNr", s:dark_grey, s:color_none, s:attr_underline)
call s:hi("DiffAdd", s:white, s:dark_green, s:attr_none)
call s:hi("DiffChange", s:white, s:dark_yellow, s:attr_none)
call s:hi("DiffDelete", s:white, s:dark_red, s:attr_none)
call s:hi("DiffText", s:white, s:light_blue, s:attr_none)
call s:hi("Directory", s:dark_blue, s:color_none, s:attr_none)
call s:hi("EndOfBuffer", s:light_grey, s:color_none, s:attr_none)
call s:hi("ErrorMsg", s:white, s:dark_red, s:attr_none)
call s:hi("FoldColumn", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("Folded", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("IncSearch", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("Italic", s:color_none, s:color_none, s:attr_italic)
call s:hi("LineNr", s:dark_grey, s:color_none, s:attr_none)
call s:hi("LineNrAbove", s:light_grey, s:color_none, s:attr_none)
call s:hi("LineNrBelow", s:light_grey, s:color_none, s:attr_none)
call s:hi("MatchParen", s:dark_fuchsia, s:color_none, s:attr_none)
call s:hi("Menu", s:dark_blue, s:dark_yellow, s:attr_none)
call s:hi("ModeMsg", s:white, s:dark_cyan, s:attr_none)
call s:hi("MoreMsg", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("MsgArea", s:dark_grey, s:color_none, s:attr_none)
call s:hi("MsgSeparator", s:color_none, s:color_none, s:attr_none)
call s:hi("NonText", s:light_grey, s:color_none, s:attr_none)
call s:hi("Normal", s:black, s:white, s:attr_none)
call s:hi("NormalFloat", s:black, s:white, s:attr_none)
call s:hi("NormalNC", s:black, s:white, s:attr_none)
call s:hi("Pmenu", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("PmenuSbar", s:white, s:dark_cyan, s:attr_none)
call s:hi("PmenuSel", s:white, s:dark_cyan, s:attr_none)
call s:hi("PmenuThumb", s:white, s:dark_cyan, s:attr_none)
call s:hi("Question", s:color_none, s:color_none, s:attr_bold)
call s:hi("QuickFixLine", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("Scrollbar", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("Search", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("SignColumn", s:color_none, s:color_none, s:attr_none)
call s:hi("SpecialKey", s:dark_yellow, s:color_none, s:attr_none)
call s:hi("SpellBad", s:white, s:dark_red, s:attr_italic)
call s:hi("SpellCap", s:color_none, s:color_none, s:attr_italic)
call s:hi("SpellLocal", s:color_none, s:color_none, s:attr_italic)
call s:hi("SpellRare", s:color_none, s:color_none, s:attr_italic)
call s:hi("StatusLine", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("StatusLineNC", s:dark_grey, s:light_grey, s:attr_none)
call s:hi("Substitute", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("TabLine", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("TabLineFill", s:color_none, s:color_none, s:attr_none)
call s:hi("TabLineSel", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("TermCursor", s:black, s:color_none, s:attr_none)
call s:hi("TermCursorNC", s:light_grey, s:color_none, s:attr_none)
call s:hi("Title", s:dark_green, s:color_none, s:attr_none)
call s:hi("Underline", s:color_none, s:color_none, s:attr_underline)
call s:hi("Variable", s:color_none, s:color_none, s:attr_none)
call s:hi("VertSplit", s:light_grey, s:color_none, s:attr_none)
call s:hi("Visual", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("VisualNOS", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("WarningMsg", s:dark_blue, s:light_yellow, s:attr_none)
call s:hi("Whitespace", s:light_grey, s:color_none, s:attr_none)
call s:hi("WildMenu", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("WinBar", s:color_none, s:light_grey, s:attr_none)
call s:hi("WinBarNC", s:color_none, s:light_grey, s:attr_none)
call s:hi("lCursor", s:black, s:white, s:attr_none)

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
call s:hi("Boolean", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("Character", s:dark_yellow, s:color_none, s:attr_none)
call s:hi("Comment", s:light_grey, s:color_none, s:attr_none)
call s:hi("Conditional", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("Constant", s:dark_grey, s:color_none, s:attr_none)
call s:hi("Decorator", s:dark_green, s:color_none, s:attr_none)
call s:hi("Define", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("Delimiter", s:dark_grey, s:color_none, s:attr_none)
call s:hi("Error", s:white, s:dark_red, s:attr_none)
call s:hi("Exception", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("Float", s:dark_fuchsia, s:color_none, s:attr_none)
call s:hi("Function", s:dark_green, s:color_none, s:attr_none)
call s:hi("Identifier", s:color_none, s:color_none, s:attr_none)
call s:hi("Include", s:dark_blue, s:color_none, s:attr_none)
call s:hi("Integer", s:dark_fuchsia, s:color_none, s:attr_none)
call s:hi("Keyword", s:light_blue, s:color_none, s:attr_none)
call s:hi("Label", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("Number", s:dark_fuchsia, s:color_none, s:attr_none)
call s:hi("Operator", s:dark_grey, s:color_none, s:attr_none)
call s:hi("PreProc", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("Repeat", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("Special", s:dark_yellow, s:color_none, s:attr_none)
call s:hi("SpecialChar", s:dark_fuchsia, s:color_none, s:attr_none)
call s:hi("SpecialComment", s:dark_grey, s:color_none, s:attr_underline)
call s:hi("Statement", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("StorageClass", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("String", s:dark_blue, s:color_none, s:attr_none)
call s:hi("Structure", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("Tag", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("Todo", s:dark_yellow, s:color_none, s:attr_underline)
call s:hi("Type", s:light_blue, s:color_none, s:attr_none)
call s:hi("Typedef", s:dark_cyan, s:color_none, s:attr_none)
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
call s:hi("LspSignatureActiveParameter", s:dark_yellow, s:color_none, s:attr_underline)
highlight! link LspReferenceText Visual
highlight! link LspReferenceRead Visual
highlight! link LspReferenceWrite Visual
" }}}

" Neovim diagnostics highlights {{{
call s:hi("DiagnosticOk", s:dark_green, s:color_none, s:attr_none)
call s:hi("DiagnosticError", s:light_red, s:color_none, s:attr_none)
call s:hi("DiagnosticHint", s:dark_green, s:color_none, s:attr_none)
call s:hi("DiagnosticInfo", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("DiagnosticWarn", s:dark_yellow, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextOk", s:dark_green, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextError", s:dark_red, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextHint", s:dark_green, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextInfo", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("DiagnosticVirtualTextWarn", s:dark_yellow, s:color_none, s:attr_none)
call s:hi("DiagnosticUnderlineOk", s:dark_green, s:color_none, s:attr_underline)
call s:hi("DiagnosticUnderlineError", s:light_red, s:color_none, s:attr_underline)
call s:hi("DiagnosticUnderlineHint", s:dark_green, s:color_none, s:attr_underline)
call s:hi("DiagnosticUnderlineInfo", s:dark_cyan, s:color_none, s:attr_underline)
call s:hi("DiagnosticUnderlineWarn", s:dark_yellow, s:color_none, s:attr_underline)
call s:hi("DiagnosticFloatingOk", s:dark_green, s:color_none, s:attr_none)
call s:hi("DiagnosticFloatingError", s:light_red, s:color_none, s:attr_none)
call s:hi("DiagnosticFloatingHint", s:dark_green, s:color_none, s:attr_none)
call s:hi("DiagnosticFloatingInfo", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("DiagnosticFloatingWarn", s:dark_yellow, s:color_none, s:attr_none)
call s:hi("DiagnosticSignOk", s:dark_green, s:color_none, s:attr_none)
call s:hi("DiagnosticSignError", s:light_red, s:color_none, s:attr_none)
call s:hi("DiagnosticSignHint", s:dark_green, s:color_none, s:attr_none)
call s:hi("DiagnosticSignInfo", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("DiagnosticSignWarn", s:dark_yellow, s:color_none, s:attr_none)
" }}}

" Neovim codelens highlights {{{
call s:hi("LspCodeLens", s:dark_grey, s:color_none, s:attr_none)
call s:hi("LspCodeLensSeparator", s:dark_grey, s:color_none, s:attr_none)
" }}}

" Treesitter highlights {{{
call s:hi("TSConstBuiltin", s:dark_fuchsia, s:color_none, s:attr_none)
call s:hi("TSConstMacro", s:dark_fuchsia, s:color_none, s:attr_none)
call s:hi("TSFuncBuiltin", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("TSStrike", s:color_none, s:color_none, s:attr_strikethrough)
call s:hi("TSURI", s:dark_fuchsia, s:color_none, s:attr_underline)
call s:hi("TSVariableBuiltin", s:dark_fuchsia, s:color_none, s:attr_none)

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

call s:hi("@markup.link", s:dark_green, s:color_none, s:attr_underline)
call s:hi("@markup.link.uri", s:dark_green, s:color_none, s:attr_underline)
call s:hi("@error", s:dark_red, s:color_none, s:attr_none)

" TODO: Needs further investigation before settling on the values of these.
highlight! link @storageclass TSType
" }}}

" Treesitter language css highlights {{{
call s:hi("cssTSProperty", s:dark_green, s:color_none, s:attr_none)
" }}}

" Treesitter language java highlights {{{
call s:hi("javaTSType", s:dark_green, s:color_none, s:attr_none)
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
call s:hi("TelescopeMatching", s:dark_fuchsia, s:color_none, s:attr_none)
call s:hi("TelescopePromptPrefix", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("TelescopeSelectionCaret", s:dark_cyan, s:color_none, s:attr_none)
" }}}

" Gitsigns highlights {{{
call s:hi("GitSignsAdd", s:dark_green, s:color_none, s:attr_none)
call s:hi("GitSignsChange", s:dark_yellow, s:color_none, s:attr_none)
call s:hi("GitSignsDelete", s:light_red, s:color_none, s:attr_none)
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
call s:hi("DapBreakpoint", s:light_red, s:color_none, s:attr_none)
call s:hi("DapBreakpointCondition", s:light_red, s:color_none, s:attr_none)
call s:hi("DapBreakpointRejected", s:light_red, s:color_none, s:attr_none)
call s:hi("DapBreakpointRejectedLine", s:color_none, s:dark_red, s:attr_none)
call s:hi("DapHitCondition", s:dark_fuchsia, s:color_none, s:attr_none)
call s:hi("DapLogPoint", s:dark_fuchsia, s:color_none, s:attr_none)
call s:hi("DapStopped", s:dark_fuchsia, s:color_none, s:attr_none)
call s:hi("DapStoppedLine", s:dark_blue, s:light_grey, s:attr_none)
" }}}

" Dap-UI highlights {{{
call s:hi("DapUIBreakpointsCurrentLine", s:dark_green, s:color_none, s:attr_none)
call s:hi("DapUIBreakpointsDisabledLine", s:light_grey, s:color_none, s:attr_none)
call s:hi("DapUIBreakpointsInfo", s:dark_grey, s:color_none, s:attr_none)
call s:hi("DapUIBreakpointsLine", s:dark_grey, s:color_none, s:attr_none)
call s:hi("DapUIBreakpointsPath", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("DapUIDecoration", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("DapUIFloatBorder", s:color_none, s:color_none, s:attr_none)
call s:hi("DapUIFrameName", s:dark_grey, s:color_none, s:attr_none)
call s:hi("DapUILineNumber", s:dark_grey, s:color_none, s:attr_none)
call s:hi("DapUIModifiedValue", s:dark_fuchsia, s:color_none, s:attr_none)
call s:hi("DapUIPlayPause", s:dark_green, s:light_grey, s:attr_none)
call s:hi("DapUIPlayPauseNC", s:dark_green, s:light_grey, s:attr_none)
call s:hi("DapUIRestart", s:dark_yellow, s:light_grey, s:attr_none)
call s:hi("DapUIRestartNC", s:dark_yellow, s:light_grey, s:attr_none)
call s:hi("DapUIScope", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("DapUISource", s:dark_grey, s:color_none, s:attr_none)
call s:hi("DapUIStepBack", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("DapUIStepBackNC", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("DapUIStepInto", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("DapUIStepIntoNC", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("DapUIStepOut", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("DapUIStepOutNC", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("DapUIStepOver", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("DapUIStepOverNC", s:dark_blue, s:light_grey, s:attr_none)
call s:hi("DapUIStop", s:dark_red, s:light_grey, s:attr_none)
call s:hi("DapUIStopNC", s:dark_red, s:light_grey, s:attr_none)
call s:hi("DapUIStoppedThread", s:dark_green, s:color_none, s:attr_none)
call s:hi("DapUIThread", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("DapUIType", s:dark_cyan, s:color_none, s:attr_none)
call s:hi("DapUIUnavailable", s:light_grey, s:light_grey, s:attr_none)
call s:hi("DapUIUnavailableNC", s:light_grey, s:light_grey, s:attr_none)
call s:hi("DapUIValue", s:color_none, s:color_none, s:attr_none)
call s:hi("DapUIVariable", s:dark_grey, s:color_none, s:attr_none)
call s:hi("DapUIWatchesEmpty", s:dark_grey, s:color_none, s:attr_none)
call s:hi("DapUIWatchesError", s:light_red, s:color_none, s:attr_none)
call s:hi("DapUIWatchesValue", s:dark_cyan, s:color_none, s:attr_none)
" }}}
endif

" vim: sw=4 sts=4 ts=4 fdm=marker fmr={{{,}}} noet tw=80
