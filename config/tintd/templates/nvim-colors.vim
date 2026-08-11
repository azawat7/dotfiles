set background={{ mode }}

hi Normal            guifg={{ colors.on_surface.default.hex }}    guibg={{ colors.surface.default.hex }}
hi NormalFloat       guifg={{ colors.on_surface.default.hex }}    guibg={{ colors.surface.default.hex }}
hi EndOfBuffer       guifg={{ colors.surface.default.hex }}
hi CursorLine        guibg={{ colors.surface_container.default.hex }}
hi CursorLineNr      guifg={{ colors.primary.default.hex }}       guibg={{ colors.surface_container.default.hex }}
hi LineNr            guifg={{ colors.on_surface_variant.default.hex }}
hi Conceal           guifg={{ colors.on_surface_variant.default.hex }}
hi ColorColumn       guibg={{ colors.surface_container.default.hex }}
hi Visual            guifg={{ colors.on_primary_container.default.hex }}  guibg={{ colors.primary_container.default.hex }}
hi Search            guifg={{ colors.on_tertiary.default.hex }}   guibg={{ colors.tertiary.default.hex }}
hi IncSearch         guifg={{ colors.on_primary.default.hex }}     guibg={{ colors.primary.default.hex }}
hi MatchParen        guifg={{ colors.tertiary.default.hex }}       gui=bold
hi ErrorMsg          guifg={{ colors.error.default.hex }}          gui=bold
hi WarningMsg        guifg={{ colors.tertiary.default.hex }}
hi ModeMsg           guifg={{ colors.on_surface.default.hex }}
hi MsgArea           guifg={{ colors.on_surface.default.hex }}
hi MoreMsg           guifg={{ colors.primary.default.hex }}
hi Question          guifg={{ colors.primary.default.hex }}
hi Directory         guifg={{ colors.primary.default.hex }}
hi Title             guifg={{ colors.primary.default.hex }}        gui=bold
hi Cursor            guifg={{ colors.surface.default.hex }}        guibg={{ colors.primary.default.hex }}
hi CursorColumn      guibg={{ colors.surface_container.default.hex }}

hi Pmenu             guifg={{ colors.on_surface.default.hex }}     guibg={{ colors.surface_container.default.hex }}
hi PmenuSel          guifg={{ colors.on_primary_container.default.hex }}  guibg={{ colors.primary_container.default.hex }}
hi PmenuSbar         guibg={{ colors.surface_container.default.hex }}
hi PmenuThumb        guibg={{ colors.on_surface_variant.default.hex }}
hi WildMenu          guifg={{ colors.on_primary_container.default.hex }}  guibg={{ colors.primary_container.default.hex }}

hi StatusLine        guifg={{ colors.on_primary_container.default.hex }}  guibg={{ colors.primary_container.default.hex }}
hi StatusLineNC      guifg={{ colors.on_surface_variant.default.hex }}    guibg={{ colors.surface_container.default.hex }}
hi TabLine           guifg={{ colors.on_surface_variant.default.hex }}    guibg={{ colors.surface_container.default.hex }}
hi TabLineSel        guifg={{ colors.on_primary.default.hex }}      guibg={{ colors.primary.default.hex }}
hi TabLineFill       guibg={{ colors.surface.default.hex }}
hi WinSeparator      guifg={{ colors.outline.default.hex }}
hi VertSplit         guifg={{ colors.outline.default.hex }}

hi Folded            guifg={{ colors.on_surface_variant.default.hex }}    guibg={{ colors.surface_container.default.hex }}
hi FoldColumn        guifg={{ colors.on_surface_variant.default.hex }}    guibg={{ colors.surface.default.hex }}
hi SignColumn        guifg={{ colors.on_surface_variant.default.hex }}    guibg={{ colors.surface.default.hex }}

hi DiffAdd           guibg={{ colors.tertiary_container.default.hex }}
hi DiffChange        guibg={{ colors.primary_container.default.hex }}
hi DiffDelete        guibg={{ colors.error_container.default.hex }}
hi DiffText          guibg={{ colors.secondary_container.default.hex }}

hi SpellBad          guifg={{ colors.error.default.hex }}           guisp={{ colors.error.default.hex }}          gui=undercurl
hi SpellCap          guifg={{ colors.tertiary.default.hex }}        guisp={{ colors.tertiary.default.hex }}       gui=undercurl
hi SpellRare         guifg={{ colors.secondary.default.hex }}       guisp={{ colors.secondary.default.hex }}      gui=undercurl
hi SpellLocal        guifg={{ colors.primary.default.hex }}         guisp={{ colors.primary.default.hex }}        gui=undercurl

hi Comment           guifg={{ colors.on_surface_variant.default.hex }}    gui=italic
hi Constant          guifg={{ colors.tertiary.default.hex }}
hi String            guifg={{ colors.tertiary.default.hex }}
hi Character         guifg={{ colors.tertiary.default.hex }}
hi Number            guifg={{ colors.tertiary.default.hex }}
hi Boolean           guifg={{ colors.tertiary.default.hex }}
hi Float             guifg={{ colors.tertiary.default.hex }}
hi Identifier        guifg={{ colors.on_surface.default.hex }}
hi Function          guifg={{ colors.primary.default.hex }}
hi Statement         guifg={{ colors.secondary.default.hex }}
hi Conditional       guifg={{ colors.secondary.default.hex }}
hi Repeat            guifg={{ colors.secondary.default.hex }}
hi Label             guifg={{ colors.secondary.default.hex }}
hi Operator          guifg={{ colors.secondary.default.hex }}
hi Keyword           guifg={{ colors.secondary.default.hex }}
hi Exception         guifg={{ colors.error.default.hex }}
hi PreProc           guifg={{ colors.tertiary.default.hex }}
hi Include           guifg={{ colors.secondary.default.hex }}
hi Define            guifg={{ colors.tertiary.default.hex }}
hi Macro             guifg={{ colors.tertiary.default.hex }}
hi PreCondit         guifg={{ colors.tertiary.default.hex }}
hi Type              guifg={{ colors.tertiary.default.hex }}
hi StorageClass      guifg={{ colors.secondary.default.hex }}
hi Structure         guifg={{ colors.secondary.default.hex }}
hi Typedef           guifg={{ colors.tertiary.default.hex }}
hi Special           guifg={{ colors.secondary.default.hex }}
hi SpecialChar       guifg={{ colors.tertiary.default.hex }}
hi Tag               guifg={{ colors.tertiary.default.hex }}
hi Delimiter         guifg={{ colors.on_surface_variant.default.hex }}
hi SpecialComment    guifg={{ colors.on_surface_variant.default.hex }}    gui=italic
hi Debug             guifg={{ colors.error.default.hex }}
hi Underlined        guifg={{ colors.primary.default.hex }}         gui=underline
hi Todo              guifg={{ colors.on_tertiary_container.default.hex }} guibg={{ colors.tertiary_container.default.hex }}

hi DiagnosticError   guifg={{ colors.error.default.hex }}
hi DiagnosticWarn    guifg={{ colors.tertiary.default.hex }}
hi DiagnosticInfo    guifg={{ colors.primary.default.hex }}
hi DiagnosticHint    guifg={{ colors.secondary.default.hex }}
hi DiagnosticUnderlineError guisp={{ colors.error.default.hex }}    gui=undercurl
hi DiagnosticUnderlineWarn  guisp={{ colors.tertiary.default.hex }} gui=undercurl
hi DiagnosticUnderlineInfo  guisp={{ colors.primary.default.hex }}  gui=undercurl
hi DiagnosticUnderlineHint  guisp={{ colors.secondary.default.hex }} gui=undercurl

hi! link @comment Comment
hi! link @comment.error ErrorMsg
hi! link @comment.todo Todo
hi! link @punctuation.delimiter Delimiter
hi! link @punctuation.bracket Delimiter
hi! link @punctuation.special Special
hi! link @string String
hi! link @string.regex SpecialChar
hi! link @string.escape SpecialChar
hi! link @string.special SpecialChar
hi! link @character Character
hi! link @number Number
hi! link @boolean Boolean
hi! link @float Float
hi! link @constant Constant
hi! link @constant.builtin Special
hi! link @constant.macro Define
hi! link @type Type
hi! link @type.builtin Type
hi! link @type.definition Typedef
hi! link @attribute PreProc
hi! link @property Identifier
hi! link @function Function
hi! link @function.call Function
hi! link @function.builtin Function
hi! link @function.macro Macro
hi! link @parameter Identifier
hi! link @variable Identifier
hi! link @variable.builtin Special
hi! link @variable.parameter Identifier
hi! link @keyword Keyword
hi! link @keyword.return Keyword
hi! link @keyword.operator Keyword
hi! link @operator Operator
hi! link @label Label
hi! link @include Include
hi! link @exception Exception
hi! link @namespace Identifier
hi! link @constructor Type
