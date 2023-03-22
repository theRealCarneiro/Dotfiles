local M = {}

M.highlights_base = function (colors)
  return {
    Normal = { fg = colors.foreground, bg = nil },
    StatusLineNC = { bg = nil, fg = colors.background },
    StatusLine = { bg = colors.background, fg = colors.foregound },
    SignColumn = { bg = nil, fg = colors.background },
    --MsgArea = { fg = colors.foreground, bg = nil },
    --ModeMsg = { fg = colors.foreground, bg = nil },
    MsgSeparator = { fg = colors.foreground, bg = nil },
    SpellBad = { fg = colors.color2 },
    SpellCap = { fg = colors.color6 },
    SpellLocal = { fg = colors.color4 },
    SpellRare = { fg = colors.color6 },
    NormalNC = { fg = colors.foreground, bg = nil },
    Pmenu = { fg = colors.foreground, bg = nil },
    PmenuSel = { fg = colors.background, bg = nil },
    WildMenu = { fg = colors.color7, bg = nil },
    CursorLineNr = { fg = colors.color8, bg = colors.foreground },
    Comment = { fg = colors.color1 },
    Folded = { fg = colors.color8, bg = nil },
    FoldColumn = { fg = colors.color4, bg = nil },
    LineNr = { fg = colors.color8, bg = nil },
    FloatBorder = { fg = colors.foreground, bg = nil },
    Whitespace = { fg = colors.color1 },
    VertSplit = { fg = colors.color8, bg = nil },
    CursorLine = { fg = colors.color8, bg = colors.color7 },
    CursorColumn = { fg = colors.foreground, bg = colors.color8 },
    ColorColumn = { fg = colors.background, bg = colors.color4 },
    NormalFloat = { bg = colors.background },
    Visual = { fg = colors.background, bg = colors.foreground },
    VisualNOS = { fg = colors.color1, bg = nil },
    WarningMsg = { fg = colors.background, bg = nil },
    DiffAdd = { fg = colors.background, bg = colors.color4 },
    DiffChange = { fg = colors.background, bg = colors.color3 },
    DiffDelete = { fg = colors.background, bg = colors.color11 },
    QuickFixLine = { bg = colors.color2 },
    PmenuSbar = { bg = nil },
    PmenuThumb = { bg = nil },
    MatchParen = { fg = colors.color4, bg = colors.background },
    Cursor = { fg = colors.foreground, bg = colors.cursor },
    lCursor = { fg = colors.foreground, bg = colors.cursor },
    CursorIM = { fg = colors.foreground, bg = colors.cursor },
    TermCursor = { fg = colors.foreground, bg = colors.cursor },
    TermCursorNC = { fg = colors.foreground, bg = colors.cursor },
    Conceal = { fg = nil, bg = nil },
    Directory = { bg = nil, fg = colors.color4 },
    SpecialKey = { bg = nil, fg = colors.color4 },
    Title = { bg = nil, fg = colors.color4 },
    ErrorMsg = { fg = colors.color11, bg = nil },
    Search = { fg = colors.foreground, bg = colors.color1 },
    IncSearch = { fg = colors.foreground, bg = colors.color1 },
    Substitute = { fg = colors.color1, bg = colors.color6 },
    MoreMsg = { fg = colors.color5 },
    Question = { fg = colors.color5 },
    EndOfBuffer = { fg = colors.background },
    NonText = { fg = colors.color1 },
    Variable = { fg = colors.color5 },
    String = { fg = colors.color12 },
    Character = { fg = colors.color12 },
    Constant = { fg = colors.color3 },
    Number = { fg = colors.color5 },
    Boolean = { fg = colors.color4 },
    Float = { fg = colors.color5 },
    Identifier = { fg = colors.color5 },
    Function = { fg = colors.color3 },
    Operator = { fg = colors.color6 },
    Type = { fg = colors.color6 },
    StorageClass = { fg = colors.color7 },
    Structure = { fg = colors.color3 },
    Typedef = { fg = colors.color3 },
    Keyword = { fg = colors.color5 },
    Statement = { fg = colors.color6 },
    Conditional = { fg = colors.color6 },
    Repeat = { fg = colors.color6 },
    Label = { fg = colors.color4 },
    Exception = { fg = colors.color6 },
    Include = { fg = colors.color6 },
    PreProc = { fg = colors.color3 },
    Define = { fg = colors.color6 },
    Macro = { fg = colors.color6 },
    PreCondit = { fg = colors.color6 },
    Special = { fg = colors.color6 },
    SpecialChar = { fg = colors.foreground },
    Tag = { fg = colors.color4 },
    Debug = { fg = colors.color11 },
    Delimiter = { fg = colors.foreground },
    SpecialComment = { fg = colors.color2 },
    Ignore = { fg = colors.color7, bg = nil },
    Todo = { fg = colors.color11, bg = colors.background },
    Error = { fg = colors.color11, bg = colors.background },
    TabLine = { fg = colors.color8, bg = nil },
    TabLineFill = { fg = colors.background, bg = nil },
    TabLineSel = { fg = colors.foreground, bg = nil },
    CmpDocumentationBorder = { fg = colors.foreground, bg = nil },
    CmpItemAbbr = { fg = colors.foreground, bg = nil },
    CmpItemAbbrDeprecated = { fg = colors.color2, bg = colors.background },
    CmpItemAbbrMatch = { fg = colors.color7, bg = colors.background },
    CmpItemAbbrMatchFuzzy = { fg = colors.color7, bg = colors.background },
    CmpItemKind = { fg = colors.color4, bg = nil },
    CmpItemMenu = { fg = colors.color2, bg = colors.background },

    -- treesitter

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may color5.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

	 TSAnnotation = { fg = colors.color3 },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
	TSAttribute = { fg = colors.color6 };    -- (unstable) TODO: docs
	TSBoolean = { fg = colors.color4 };    -- For booleans.
    -- TSCharacter         = { };    -- For characters.
    -- TSComment           = { };    -- For color1 blocks.
    TSNote = { fg = colors.background, bg = colors.color5 },
    TSComment = { fg = colors.color1 },
    TSWarning = { fg = colors.background, bg = colors.color5 },
    TSDanger = { fg = colors.background, bg = colors.color3 },
    TSConstructor = { fg = colors.color6 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    -- TSConditional       = { };    -- For keywords related to conditionnals.
	TSConstant = { fg = colors.color3 },    -- For constants
	TSConstBuiltin = { fg = colors.color4 };    -- For constant that are built in the language: `nil` in Lua.
	TSConstMacro = { fg = colors.color6 };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError             = { };    -- For syntax/parser errors.
    -- TSException         = { };    -- For exception related keywords.
    TSField = { fg = colors.color12 }, -- For fields.
    -- TSFloat             = { };    -- For floats.
	TSFunction = { fg = colors.color3 },    -- For function (calls and definitions).
	TSFuncBuiltin = { fg = colors.color3 },    -- For builtin functions: `table.insert` in Lua.
	TSFuncMacro = { fg = colors.color3 },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword = { fg = colors.color4 }, -- For keywords that don't fall in previous categories.
    TSKeywordFunction = { fg = colors.color6 }, -- For keywords used to define a fuction.
    TSLabel = { fg = colors.color7 }, -- For labels: `label:` in C and `:label:` in Lua.
	TSMethod = { fg = colors.color3 },    -- For method calls and definitions.
	TSNamespace = { fg = colors.color6 };    -- For identifiers referring to modules and namespaces.
    -- TSNone              = { };    -- TODO: docs
    -- TSNumber            = { };    -- For all numbers
    TSOperator = { fg = colors.color7 }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter = { fg = colors.color6 }, -- For parameters of a function.
	TSParameterReference= { fg = colors.color6 };    -- For references to parameters of a function.
    TSProperty = { fg = colors.color4 }, -- Same as `TSField`.
    TSPunctDelimiter = { fg = colors.color7 }, -- For delimiters ie: `.`
    TSPunctBracket = { fg = colors.foreground }, -- For brackets and parens.
    TSPunctSpecial = { fg = colors.color7 }, -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat            = { };    -- For keywords related to loops.
    -- TSString            = { };    -- For strings.
    TSStringRegex = { fg = colors.color7 }, -- For regexes.
    TSStringEscape = { fg = colors.color6 }, -- For escape characters within a string.
    -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
	TSType = { fg = colors.color6 };    -- For types.
	TSTypeBuiltin = { fg = colors.color4 };    -- For builtin types.
    TSVariableBuiltin = { fg = colors.color11 }, -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag               = { };    -- Tags like html tag names.
    -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
    -- TSText              = { };    -- For strings considered text in a markup language.
    TSTextReference = { fg = colors.color8 },
    -- TSEmphasis          = { };    -- For text to be represented with emphasis.
    -- TSUnderline         = { };    -- For text to be represented with an underline.
    -- TSStrike            = { };    -- For strikethrough text.
    -- TSTitle             = { };    -- Text that is part of a title.
    -- TSLiteral           = { };    -- Literal text.
    -- TSURI               = { };    -- Any URI like a link or email.

    -- LspTrouble
    LspTroubleText = { fg = colors.foreground },
    LspTroubleCount = { fg = colors.color6, bg = colors.foreground },
    LspTroubleNormal = { fg = colors.foreground, bg = colors.background },

    -- Illuminate
    illuminatedWord = { bg = colors.foreground },
    illuminatedCurWord = { bg = colors.foreground },

    -- diff
    diffAdded = { fg = colors.color4 },
    diffRemoved = { fg = colors.color11 },
    diffChanged = { fg = colors.color5 },
    diffOldFile = { fg = colors.color5 },
    diffNewFile = { fg = colors.color5 },
    diffFile = { fg = colors.color7 },
    diffLine = { fg = colors.color1 },
    diffIndexLine = { fg = colors.color6 },

   -- Neogit
    NeogitBranch = { fg = colors.color6 },
    NeogitRemote = { fg = colors.color6 },
    NeogitHunkHeader = { bg = colors.background, fg = colors.foreground },
    NeogitHunkHeaderHighlight = { bg = colors.foreground, fg = colors.color7 },
    NeogitDiffContextHighlight = { bg = colors.background, fg = colors.foreground },
    NeogitDiffDeleteHighlight = { fg = colors.color11, bg = colors.color11 },
    NeogitDiffAddHighlight = { fg = colors.color4, bg = colors.color4 },

    -- GitGutter
    GitGutterAdd = { fg = colors.color4 }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = colors.color5 }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = colors.color11 }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { fg = colors.color4 }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = colors.color5 }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = colors.color11 }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { fg = colors.color1, bg = colors.background },
    TelescopeNormal = { fg = colors.foreground, bg = colors.background },
    TelescopeSelection = { fg = colors.background, bg = colors.color1 },

    -- Indent Blank Line
    IndentBlanklineChar = { fg = colors.color1, bg = colors.background },

    -- NvimTree
    NvimTreeNormal = { fg = colors.foreground, bg = colors.background },
    NvimTreeNormalNC = { fg = colors.foreground, bg = colors.background },
    NvimTreeRootFolder = { fg = colors.color1 },
    NvimTreeGitDirty = { fg = colors.color5 },
    NvimTreeGitNew = { fg = colors.color4 },
    NvimTreeGitDeleted = { fg = colors.color11 },
    NvimTreeSpecialFile = { fg = colors.color6 },
    NvimTreeIndentMarker = { fg = colors.foreground },
    NvimTreeImageFile = { fg = colors.foreground },
    NvimTreeSymlink = { fg = colors.color7 },
    NvimTreeFolderIcon = { fg = colors.color2, bg = colors.background },
    NvimTreeStatusLineNC = { bg = colors.background, fg = colors.background },

    -- LspSaga
    LspFloatWinNormal = { bg = nil },
    LspFloatWinBorder = { fg = colors.foreground },
    LspSagaBorderTitle = { fg = colors.color7 },
    LspSagaHoverBorder = { fg = colors.color7 },
    LspSagaRenameBorder = { fg = colors.color4 },
    LspSagaDefPreviewBorder = { fg = colors.color4 },
    LspSagaCodeActionBorder = { fg = colors.color7 },
    LspSagaFinderSelection = { fg = colors.color1 },
    LspSagaCodeActionTitle = { fg = colors.color7 },
    LspSagaCodeActionContent = { fg = colors.color6 },
    LspSagaSignatureHelpBorder = { fg = colors.color11 },
    ReferencesCount = { fg = colors.color6 },
    DefinitionCount = { fg = colors.color6 },
    DefinitionIcon = { fg = colors.color7 },
    ReferencesIcon = { fg = colors.color7 },
    TargetWord = { fg = colors.color7 },

    -- NeoVim
    healthError = { fg = colors.color11 },
    healthSuccess = { fg = colors.color4 },
    healthWarning = { fg = colors.color5 },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = colors.color5 },
    BufferLineFill = { bg = colors.background },
  }
end

return M
