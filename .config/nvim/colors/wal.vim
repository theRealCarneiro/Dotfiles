" wal.vim -- Vim color scheme.
" Author:       Dylan Araps
" Webpage:      https://github.com/dylanaraps/wal
" Description:  A colorscheme that uses your terminal colors, made to work with 'wal'.

hi clear
set background=dark

if exists('syntax_on')
    syntax reset
endif

" Colorscheme name
let g:colors_name = 'wal'

" highlight groups {{{

" get hex colors for termguicolors
source ~/.config/colorfig/generated/colors.vim

" set t_Co=16
exec "hi Normal ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi NonText ctermbg=NONE ctermfg=0 guibg=NONE guifg=".g:color0
exec "hi Comment ctermbg=NONE ctermfg=8 guibg=NONE guifg=".g:color8
exec "hi Conceal ctermbg=NONE guibg=NONE"
exec "hi Constant ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi Error ctermbg=1 ctermfg=7 guifg=".g:color7. " guibg=".g:color1
exec "hi Identifier ctermbg=NONE ctermfg=1 cterm=BOLD guibg=NONE guifg=".g:color1
exec "hi Ignore ctermbg=8 ctermfg=0 guifg=".g:color0. " guibg=".g:color8
exec "hi PreProc ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi Special ctermbg=NONE ctermfg=6 guibg=NONE guifg=".g:color6
exec "hi Statement ctermbg=NONE ctermfg=1 guibg=NONE guifg=".g:color1
exec "hi String ctermbg=NONE ctermfg=2 guibg=NONE guifg=".g:color2
exec "hi Number ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi Todo ctermbg=2 ctermfg=0 guifg=".g:color0. " guibg=".g:color2
exec "hi Type ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi Underlined ctermbg=NONE ctermfg=1 cterm=underline guibg=NONE guifg=".g:color1
exec "hi StatusLine ctermbg=7 ctermfg=0 guifg=".g:color0. " guibg=".g:color7
exec "hi StatusLineNC ctermbg=8 ctermfg=0 guifg=".g:color0. " guibg=".g:color0
exec "hi TabLine ctermbg=0 ctermfg=7 gui=NONE guibg=".g:color0." guifg=".g:color8
exec "hi TabLineFill ctermbg=NONE gui=NONE ctermfg=8 guibg=NONE guifg=".g:color0
exec "hi TabLineSel ctermbg=NONE guibg=NONE ctermfg=7 guifg=".g:color7
exec "hi TermCursorNC ctermbg=3 ctermfg=0 guifg=".g:color0. " guibg=".g:color3
exec "hi VertSplit gui=NONE ctermbg=NONE ctermfg=8 guifg=".g:color8. " guibg=NONE"
exec "hi Title ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi CursorLine cterm=NONE ctermbg=7 ctermfg=0 guifg=".g:color0. " guibg=".g:color7
exec "hi LineNr ctermbg=NONE ctermfg=8 guibg=NONE guifg=".g:color8
exec "hi CursorLineNr cterm=NONE ctermbg=7 ctermfg=8 guifg=".g:color8. " guibg=".g:color7
exec "hi helpLeadBlank ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi helpNormal ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi Visual ctermbg=0 ctermfg=15 cterm=reverse term=reverse guifg=".g:color1
exec "hi VisualNOS ctermbg=NONE ctermfg=1 guibg=NONE guifg=".g:color1
exec "hi Pmenu ctermbg=8 ctermfg=7 guifg=".g:color7. " guibg=".g:color8
exec "hi PmenuSbar ctermbg=6 ctermfg=7 guifg=".g:color7. " guibg=".g:color6
exec "hi PmenuSel ctermbg=4 ctermfg=0 guifg=".g:color0. " guibg=".g:color4
exec "hi PmenuThumb ctermbg=8 ctermfg=8 guifg=".g:color8. " guibg=".g:color8
exec "hi FoldColumn ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi Folded ctermbg=NONE ctermfg=8 guibg=NONE guifg=".g:color8
exec "hi WildMenu ctermbg=2 ctermfg=0 guifg=".g:color0. " guibg=".g:color2
exec "hi SpecialKey ctermbg=NONE ctermfg=8 guibg=NONE guifg=".g:color8
exec "hi DiffAdd ctermbg=NONE ctermfg=2 guibg=NONE guifg=".g:color2
exec "hi DiffChange ctermbg=NONE ctermfg=8 guibg=NONE guifg=".g:color8
exec "hi DiffDelete ctermbg=NONE ctermfg=1 guibg=NONE guifg=".g:color1
exec "hi DiffText ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi IncSearch ctermbg=3 ctermfg=0 guifg=".g:color0. " guibg=".g:color3
exec "hi Search ctermbg=3 ctermfg=0 guifg=".g:color0. " guibg=".g:color3
exec "hi Directory ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi MatchParen ctermbg=1 ctermfg=8 guifg=".g:color8. " guibg=".g:color1
exec "hi ColorColumn ctermbg=4 ctermfg=0 guifg=".g:color0. " guibg=".g:color4
exec "hi signColumn ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi ErrorMsg ctermbg=NONE ctermfg=8 guibg=NONE guifg=".g:color8
exec "hi ModeMsg ctermbg=NONE ctermfg=2 guibg=NONE guifg=".g:color2
exec "hi MoreMsg ctermbg=NONE ctermfg=2 guibg=NONE guifg=".g:color2
exec "hi Question ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi WarningMsg ctermbg=1 ctermfg=0 guifg=".g:color0. " guibg=".g:color1
exec "hi Cursor ctermbg=NONE ctermfg=8 guibg=NONE guifg=".g:color8
exec "hi Structure ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi CursorColumn ctermbg=8 ctermfg=7 guifg=".g:color7. " guibg=".g:color8
exec "hi ModeMsg ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi SpellBad ctermbg=NONE ctermfg=1 cterm=underline guibg=NONE guifg=".g:color1
exec "hi SpellCap ctermbg=NONE ctermfg=4 cterm=underline guibg=NONE guifg=".g:color4
exec "hi SpellLocal ctermbg=NONE ctermfg=5 cterm=underline guibg=NONE guifg=".g:color5
exec "hi SpellRare ctermbg=NONE ctermfg=6 cterm=underline guibg=NONE guifg=".g:color6
exec "hi Boolean ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi Character ctermbg=NONE ctermfg=1 guibg=NONE guifg=".g:color1
exec "hi Conditional ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi Define ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi Delimiter ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi Float ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi Include ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi Keyword ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi Label ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi Operator ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi Repeat ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi SpecialChar ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi Tag ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi Typedef ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi vimUserCommand ctermbg=NONE ctermfg=1 cterm=BOLD guibg=NONE guifg=".g:color1
    hi link vimMap vimUserCommand
    hi link vimLet vimUserCommand
    hi link vimCommand vimUserCommand
    hi link vimFTCmd vimUserCommand
    hi link vimAutoCmd vimUserCommand
    hi link vimNotFunc vimUserCommand
exec "hi vimNotation ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi vimMapModKey ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi vimBracket ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi vimCommentString ctermbg=NONE ctermfg=8 guibg=NONE guifg=".g:color8
exec "hi htmlLink ctermbg=NONE ctermfg=1 cterm=underline guibg=NONE guifg=".g:color1
exec "hi htmlBold ctermbg=NONE ctermfg=3 cterm=BOLD guibg=NONE guifg=".g:color3
exec "hi htmlItalic ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi htmlEndTag ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi htmlTag ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi htmlTagName ctermbg=NONE ctermfg=1 cterm=BOLD guibg=NONE guifg=".g:color1
exec "hi htmlH1 ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
    hi link htmlH2 htmlH1
    hi link htmlH3 htmlH1
    hi link htmlH4 htmlH1
    hi link htmlH5 htmlH1
    hi link htmlH6 htmlH1
exec "hi cssMultiColumnAttr ctermbg=NONE ctermfg=2 guibg=NONE guifg=".g:color2
    hi link cssFontAttr cssMultiColumnAttr
    hi link cssFlexibleBoxAttr cssMultiColumnAttr
exec "hi cssBraces ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
    hi link cssAttrComma cssBraces
exec "hi cssValueLength ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi cssUnitDecorators ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi cssValueNumber ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
    hi link cssValueLength cssValueNumber
exec "hi cssNoise ctermbg=NONE ctermfg=8 guibg=NONE guifg=".g:color8
exec "hi cssTagName ctermbg=NONE ctermfg=1 guibg=NONE guifg=".g:color1
exec "hi cssFunctionName ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi scssSelectorChar ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi scssAttribute ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
    hi link scssDefinition cssNoise
exec "hi sassidChar ctermbg=NONE ctermfg=1 guibg=NONE guifg=".g:color1
exec "hi sassClassChar ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi sassInclude ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi sassMixing ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi sassMixinName ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi javaScript ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi javaScriptBraces ctermbg=NONE ctermfg=7 guibg=NONE"
exec "hi javaScriptNumber ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi markdownH1 ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
    hi link markdownH2 markdownH1
    hi link markdownH3 markdownH1
    hi link markdownH4 markdownH1
    hi link markdownH5 markdownH1
    hi link markdownH6 markdownH1
exec "hi markdownAutomaticLink ctermbg=NONE ctermfg=2 cterm=underline guibg=NONE guifg=".g:color2
    hi link markdownUrl markdownAutomaticLink
exec "hi markdownError ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi markdownCode ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi markdownCodeBlock ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi markdownCodeDelimiter ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi markdownItalic cterm=Italic"
exec "hi markdownBold cterm=Bold"
exec "hi xdefaultsValue ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi rubyInclude ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi rubyDefine ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi rubyFunction ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi rubyStringDelimiter ctermbg=NONE ctermfg=2 guibg=NONE guifg=".g:color2
exec "hi rubyInteger ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi rubyAttribute ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi rubyConstant ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi rubyInterpolation ctermbg=NONE ctermfg=2 guibg=NONE guifg=".g:color2
exec "hi rubyInterpolationDelimiter ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi rubyRegexp ctermbg=NONE ctermfg=6 guibg=NONE guifg=".g:color6
exec "hi rubySymbol ctermbg=NONE ctermfg=2 guibg=NONE guifg=".g:color2
exec "hi rubyTodo ctermbg=NONE ctermfg=8 guibg=NONE guifg=".g:color8
exec "hi rubyRegexpAnchor ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
    hi link rubyRegexpQuantifier rubyRegexpAnchor
exec "hi pythonOperator ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi pythonFunction ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi pythonRepeat ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi pythonStatement ctermbg=NONE ctermfg=1 cterm=Bold guibg=NONE guifg=".g:color1
exec "hi pythonBuiltIn ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi phpMemberSelector ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi phpComparison ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi phpParent ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi cOperator ctermbg=NONE ctermfg=6 guibg=NONE guifg=".g:color6
exec "hi cPreCondit ctermbg=NONE ctermfg=5 guibg=NONE guifg=".g:color5
exec "hi SignifySignAdd ctermbg=NONE ctermfg=2 guibg=NONE guifg=".g:color2
exec "hi SignifySignChange ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi SignifySignDelete ctermbg=NONE ctermfg=1 guibg=NONE guifg=".g:color1
exec "hi NERDTreeDirSlash ctermbg=NONE ctermfg=4 guibg=NONE guifg=".g:color4
exec "hi NERDTreeExecFile ctermbg=NONE ctermfg=7 guibg=NONE guifg=".g:color7
exec "hi ALEErrorSign ctermbg=NONE ctermfg=1 guibg=NONE guifg=".g:color1
exec "hi ALEWarningSign ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3
exec "hi ALEError ctermbg=NONE ctermfg=1 guibg=NONE guifg=".g:color1
exec "hi ALEWarning ctermbg=NONE ctermfg=3 guibg=NONE guifg=".g:color3

" }}}

" Plugin options {{{

let g:limelight_conceal_ctermfg = 8

" }}}
