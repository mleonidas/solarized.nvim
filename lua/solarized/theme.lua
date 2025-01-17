local solarized = require("solarized.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = solarized.yellow }, -- int, long, char, etc.
		StorageClass =				{ fg = solarized.cyan }, -- static, register, volatile, etc.
		Structure =					{ fg = solarized.purple }, -- struct, union, enum, etc.
		Constant =					{ fg = solarized.cyan }, -- any constant
		String =					{ fg = solarized.cyan, bg = solarized.none, style= 'italic' }, -- Any string
		Character =					{ fg = solarized.orange }, -- any character constant: 'c', '\n'
		Number =					{ fg = solarized.orange }, -- a number constant: 5
		Boolean =					{ fg = solarized.orange }, -- a boolean constant: TRUE, false
		Float =						{ fg = solarized.orange }, -- a floating point constant: 2.3e10
		Statement =					{ fg = solarized.green }, -- any statement
		Label =						{ fg = solarized.purple }, -- case, default, etc.
		Operator =					{ fg = solarized.cyan }, -- sizeof", "+", "*", etc.
		Exception =					{ fg = solarized.cyan }, -- try, catch, throw
		PreProc =					{ fg = solarized.purple }, -- generic Preprocessor
		Include =					{ fg = solarized.blue }, -- preprocessor #include
		Define =					{ fg = solarized.pink }, -- preprocessor #define
		Macro =						{ fg = solarized.cyan }, -- same as Define
		Typedef =					{ fg = solarized.red }, -- A typedef
		PreCondit =					{ fg = solarized.cyan }, -- preprocessor #if, #else, #endif, etc.
		Special =					{ fg = solarized.red }, -- any special symbol
		SpecialChar =				{ fg = solarized.pink }, -- special character in a constant
		Tag =						{ fg = solarized.red }, -- you can use CTRL-] on this
		Delimiter =					{ fg = solarized.cyan }, -- character that needs attention like , or .
		SpecialComment =			{ fg = solarized.gray }, -- special things inside a comment
		Debug =						{ fg = solarized.red }, -- debugging statements
		Underlined =				{ fg = solarized.violet, bg = solarized.none, style = 'underline' }, -- text that stands out, HTML links
		Ignore =					{ fg = solarized.disabled }, -- left blank, hidden
		Error =						{ fg = solarized.error, bg = solarized.none, style = 'bold,underline' }, -- any erroneous construct
		Todo =						{ fg = solarized.magenta, bg = solarized.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        htmlLink = { fg = solarized.link, style = "underline" },
        htmlH1 = { fg = solarized.cyan, style = "bold" },
        htmlH2 = { fg = solarized.red, style = "bold" },
        htmlH3 = { fg = solarized.green, style = "bold" },
        htmlH4 = { fg = solarized.yellow, style = "bold" },
        htmlH5 = { fg = solarized.purple, style = "bold" },
        markdownH1 = { fg = solarized.cyan, style = "bold" },
        markdownH2 = { fg = solarized.red, style = "bold" },
        markdownH3 = { fg = solarized.green, style = "bold" },
        markdownH1Delimiter = { fg = solarized.cyan },
        markdownH2Delimiter = { fg = solarized.red },
        markdownH3Delimiter = { fg = solarized.green },
	}

	-- Options:

	-- Italic comments
	if vim.g.solarized_italic_comments == true then
		syntax.Comment =		{fg = solarized.comments, bg = solarized.none, style = 'italic'} -- italic comments
	else
		syntax.Comment =		{fg = solarized.comments} -- normal comments
	end

	-- Italic Keywords
	if vim.g.solarized_italic_keywords == true then
		syntax.Conditional =		{fg = solarized.yellow, bg = solarized.none, style = 'italic'} -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = solarized.purple, bg = solarized.none, style = 'italic'} -- italic for, do, while, etc.
		syntax.Repeat =				{fg = solarized.purple, bg = solarized.none, style = 'italic'} -- italic any other keyword
	else
		syntax.Conditional =		{fg = solarized.yellow} -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = solarized.purple} -- normal for, do, while, etc.
		syntax.Repeat =				{fg = solarized.purple} -- normal any other keyword
	end

	-- Italic Function names
	if vim.g.solarized_italic_functions == true then
		syntax.Function =		{fg = solarized.green, bg = solarized.none, style = 'italic'} -- italic funtion names
	else
		syntax.Function =		{fg = solarized.green} -- normal function names
	end

	if vim.g.solarized_italic_variables == true then
		syntax.Identifier =				{fg = solarized.blue, bg = solarized.none, style = 'italic'}; -- any variable name
    else
		syntax.Identifier =				{fg = solarized.blue}; -- any variable name
    end

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
		NormalFloat =			{ fg = solarized.fg, bg = solarized.float }, -- normal text and background color
		ColorColumn =			{ fg = solarized.none, bg = solarized.bg_alt }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = solarized.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = solarized.cursor, bg = solarized.none, style = 'reverse' }, -- the character under the cursor
		CursorIM =				{ fg = solarized.cursor, bg = solarized.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = solarized.blue, bg = solarized.none }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = solarized.green, bg = solarized.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange =			{ fg = solarized.orange, bg = solarized.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete =			{ fg = solarized.red, bg = solarized.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText =				{ fg = solarized.yellow, bg = solarized.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		EndOfBuffer =			{ fg = solarized.disabled },
		ErrorMsg =				{ fg = solarized.none },
		Folded =				{ fg = solarized.disabled, bg = solarized.none, style = 'italic' },
		FoldColumn =			{ fg = solarized.blue },
		IncSearch =				{ fg = solarized.highlight, bg = solarized.none, style = 'reverse' },
		LineNr =				{ fg = solarized.line_numbers, bg = solarized.bg_alt },
		CursorLineNr =			{ fg = solarized.gray },
		MatchParen =			{ fg = solarized.yellow, bg = solarized.none, style = 'bold' },
		ModeMsg =				{ fg = solarized.fg },
		MoreMsg =				{ fg = solarized.fg },
		NonText =				{ fg = solarized.comments },
		Pmenu =					{ fg = solarized.fg, bg = solarized.none },
		PmenuSel =				{ fg = solarized.fg, bg = solarized.accent },
		PmenuSbar =				{ fg = solarized.text, bg = solarized.accent },
		PmenuThumb =			{ fg = solarized.fg, bg = solarized.accent },
		Question =				{ fg = solarized.green },
		QuickFixLine =			{ fg = solarized.highlight, bg = solarized.white, style = 'reverse' },
		qfLineNr =				{ fg = solarized.highlight, bg = solarized.white, style = 'reverse' },
		Search =				{ fg = solarized.highlight, bg = solarized.none, style = 'reverse' },
		SpecialKey =			{ fg = solarized.purple },
		SpellBad =				{ fg = solarized.red, bg = solarized.none, style = 'italic,undercurl' },
		SpellCap =				{ fg = solarized.blue, bg = solarized.none, style = 'italic,undercurl' },
		SpellLocal =			{ fg = solarized.cyan, bg = solarized.none, style = 'italic,undercurl' },
		SpellRare =				{ fg = solarized.purple, bg = solarized.none, style = 'italic,undercurl' },
		StatusLine =			{ fg = solarized.fg, bg = solarized.contrast },
		StatusLineNC =		    { fg = solarized.text, bg = solarized.disabled },
		StatusLineTerm =		{ fg = solarized.fg, bg = solarized.contrast },
		StatusLineTermNC =		{ fg = solarized.text, bg = solarized.disabled },
		TabLineFill =			{ fg = solarized.none },
		TablineSel =			{ fg = solarized.purple, bg = solarized.accent },
		Tabline =				{ fg = solarized.fg },
		Title =					{ fg = solarized.green, bg = solarized.none, style = 'bold' },
		Visual =				{ fg = solarized.none, bg = solarized.selection },
		VisualNOS =				{ fg = solarized.none, bg = solarized.selection },
		WarningMsg =			{ fg = solarized.yellow },
		WildMenu =				{ fg = solarized.orange, bg = solarized.none, style = 'bold' },
		CursorColumn =			{ fg = solarized.none, bg = solarized.active },
		CursorLine =			{ fg = solarized.none, bg = solarized.bg_alt },
		ToolbarLine =			{ fg = solarized.fg, bg = solarized.bg_alt },
		ToolbarButton =			{ fg = solarized.fg, bg = solarized.none, style = 'bold' },
		NormalMode =			{ fg = solarized.accent, bg = solarized.none, style = 'reverse' },
		InsertMode =			{ fg = solarized.green, bg = solarized.none, style = 'reverse' },
		ReplacelMode =			{ fg = solarized.red, bg = solarized.none, style = 'reverse' },
		VisualMode =			{ fg = solarized.purple, bg = solarized.none, style = 'reverse' },
		CommandMode =			{ fg = solarized.gray, bg = solarized.none, style = 'reverse' },
		Warnings =				{ fg = solarized.yellow },

        healthError =           { fg = solarized.error },
        healthSuccess =         { fg = solarized.green },
        healthWarning =         { fg = solarized.yellow },

        -- Dashboard
        DashboardShortCut =                     { fg = solarized.grey },
        DashboardHeader =                       { fg = solarized.grey },
        DashboardCenter =                       { fg = solarized.grey },
        DashboardFooter =                       { fg = solarized.green, style = "italic" },

	}

    -- Options:

    --Set transparent background
    if vim.g.solarized_disable_background == true then
		editor.Normal =				{ fg = solarized.base1, bg = solarized.none } -- normal text and background color
		editor.SignColumn =			{ fg = solarized.base1, bg = solarized.none }
    else
		editor.Normal =				{ fg = solarized.base1, bg = solarized.none } -- normal text and background color
		editor.SignColumn =			{ fg = solarized.fg, bg = solarized.none }
    end

    -- Remove window split borders
    if vim.g.solarized_borders == true then
		editor.VertSplit =				{ fg = solarized.border }
    else
		editor.VertSplit =				{ fg = solarized.bg }
    end

    return editor
end

theme.loadTerminal = function ()

	vim.g.terminal_color_0 = solarized.black
	vim.g.terminal_color_1 = solarized.red
	vim.g.terminal_color_2 = solarized.green
	vim.g.terminal_color_3 = solarized.yellow
	vim.g.terminal_color_4 = solarized.blue
	vim.g.terminal_color_5 = solarized.purple
	vim.g.terminal_color_6 = solarized.cyan
	vim.g.terminal_color_7 = solarized.white
	vim.g.terminal_color_8 = solarized.gray
	vim.g.terminal_color_9 = solarized.red
	vim.g.terminal_color_10 = solarized.green
	vim.g.terminal_color_11 = solarized.yellow
	vim.g.terminal_color_12 = solarized.blue
	vim.g.terminal_color_13 = solarized.purple
	vim.g.terminal_color_14 = solarized.cyan
	vim.g.terminal_color_15 = solarized.white

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups
    if vim.fn.has("nvim-0.8.0") == 1 then
        local treesitter = {
            ["@annotation"] = { fg = solarized.red, style = 'bold' },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
            ["@attribute"] = { fg = solarized.yellow},    -- (unstable) TODO: docs
            ["@boolean"] = { fg = solarized.cyan},    -- For booleans.
            ["@character"] = { fg = solarized.orange},    -- For characters.
            ["@character.special"] = { fg = solarized.purple }, -- For special punctutation that does not fall in the catagories before.
            ["@comment"] = { fg = solarized.comments , bg = solarized.none, style = 'bold,italic' },    -- For comment blocks
            ["@conditional"] =  { fg = solarized.green, style = 'italic' },    -- For keywords related to conditionnals
            ["@constant"] = { fg = solarized.yellow },    -- For constants,
            ["@constant.builtin"] = { fg = solarized.magenta },    -- For constant that are built in the language: `nil` in Lua
            ["@constant.macro"] = { fg = solarized.magenta },    -- For constant that are built in the language: `nil` in Lua
            ["@constructor"] = { fg = solarized.purple}, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors
            ["@debug"] = { fg = solarized.red }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors
            ["@define"] = { fg = solarized.cyan },
            ["@error"] = { fg = solarized.error, style = 'bold' },    -- For syntax/parser errors.
            ["@exception"] = { fg = solarized.yellow, style = 'bold' },    -- For exception related keywords
            ["@field"] = { fg = solarized.base0 }, -- For fields.
            ["@float"] = { fg = solarized.red },    -- For floats.
            ["@function"] = { fg = solarized.blue, style = 'bold,italic' },    -- For fuction (calls and definitions)
            ["@function.call"] = { fg = solarized.purple},    -- For fuction (calls and definitions
            ["@function.builtin"] = { fg = solarized.purple, style = 'bold,italic' },    -- For builtin functions: `table.insert` in Lua.
            ["@function.macro"] = { fg = solarized.blue },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
            ["@include"] = { fg = solarized.green, style = 'bold' },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
            ["@keyword"] = { fg = solarized.green, style = 'italic' }, -- For keywords that don't fall in previous categories.
            ["@keyword.function"] = { fg = solarized.green, style = 'bold,italic' }, -- For keywords used to define a fuction.
            ["keyword.operator"] = {},
            ["@keyword.return"] = { fg = solarized.green, style = 'bold,italic' }, -- For keywords used to define a fuction.
            ["@label"] = { fg = solarized.red }, -- For labels: `label:` in C and `:label:` in Lua.
            ["@method"] = { fg = solarized.blue, style = 'bold,italic' },    -- For method calls and definitions.
            ["@method.call"] = { fg = solarized.blue },    -- For constants that are defined by macros: `NULL` in C.
            ["@namespace"] = { fg = solarized.blue },    -- For identifiers referring to modules and namespaces.
            ["@none"] = {},
            ["@number"] = { fg = solarized.cyan },    -- For all numbers
            ["@operator"] = { fg = solarized.green}, -- For any operator: `+`, but also `->` and `*` in C.
            ["@parameter"] = { fg = solarized.purple }, -- For parameters of a function.
            ["@parameter.reference"] = { fg = solarized.green },    -- For references to parameters of a function.
            ["@preproc"] = { fg = solarized.purple }, -- generic Preprocessor
            ["@property"] = { fg = solarized.green }, -- Same as `TSField`.
            ["@punctuation.delimiter"] = { fg = solarized.green }, -- For delimiters ie: `.`
            ["@punctuation.bracket"] = { fg = solarized.gray }, -- For brackets and parens.
            ["@punctuation.special"] = { fg = solarized.purple }, -- For special punctutation that does not fall in the catagories before.
            ["@repeat"] = { fg = solarized.green, style = 'bold,italic' },    -- For keywords related to loops.
            ["@storageclass"] = { fg = solarized.cyan }, -- static, register, volatile, etc.
            ["@string"] = { fg = solarized.cyan },    -- For strings.
            ["@string.regex"] = { fg = solarized.blue }, -- For regexes.
            ["@string.escape"] = { fg = solarized.fg }, -- For escape characters within a string.
            ["@string.special"] = { fg = solarized.red }, -- any special symbol
            ["@symbol"] = { fg = solarized.yellow},    -- For identifiers referring to symbols or atoms."TSSymbol",
            ["@tag"] = { fg = solarized.red, style = 'bold' },    -- Tags like html tag names.
            ["@tag.attribute"] = { fg = solarized.yellow },    -- Tag delimiter like `<` `>` `/`
            ["@tag.delimiter"] = { fg = solarized.yellow },    -- Tag delimiter like `<` `>` `/`
            ["@text"] = { fg = solarized.text },    -- For strings considered text in a markup language.
            ["@text.emphasis"] = { fg = solarized.paleblue, style = 'bold' },    -- For text to be represented with emphasis.
            ["@text.underline"] = { fg = solarized.fg, bg = solarized.none, style = 'underline' },    -- For text to be represented with an underline.
            ["@text.strike"] = { },    -- For strikethrough text.
            ["@text.title"] = { fg = solarized.paleblue, bg = solarized.none, style = 'bold' },    -- Text that is part of a title.
            ["@text.literal"] = { fg = solarized.fg},    -- Literal text.
            ["@text.uri"] = { fg = solarized.link },    -- Any URI like a link or email.
            ["@text.math"] = {},
            ["@text.reference"] = { fg = solarized.yellow }, -- FIXME
            ["@text.environment"] = {},
            ["@text.environment.name"] = {},
            ["@text.note"] = {},
            ["@text.warning"] = {},
            ["@text.danger"] = {},
            ["@todo"] = { fg = solarized.magenta, bg = solarized.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX"
            ["@type"] = { fg = solarized.yellow },    -- For types.
            ["@type.builtin"] = { fg = solarized.yellow },    -- For builtin types.
            ["@type.qualifier"] = {},
            ["@type.definition"] = {},
            ["@variable"] = { fg = solarized.base0, style = 'italic' }, -- Any variable name that does not have another highlight.
            ["@variable.builtin"] = { fg = solarized.base0, style = 'italic' }, -- Variable names that are defined by the languages, like `this` or `self`.,
            ["rustMacro"] = { fg = solarized.green },
            ["rustFuncName"] = { fg = solarized.blue },
            ["rustStorage"] = { fg = solarized.red },
            ["rustSigil"] = { fg = solarized.blue },
            ["rustStructure"] = { fg = solarized.green },
            ["rustConditional"] = { fg = solarized.green },
            ["rustSelf"] = { fg = solarized.magenta },
            ["rustAssert"] = { fg = solarized.green },
            ["rustEnumVariant"] = { fg = solarized.yellow }
        }
        return treesitter
    else
        local treesitter = {
            TSAnnotation =              { fg = solarized.red, style = 'bold' },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
            TSAttribute =               { fg = solarized.yellow},    -- (unstable) TODO: docs
            TSBoolean=                  { fg = solarized.cyan},    -- For booleans.
            TSCharacter=                { fg = solarized.orange},    -- For characters.
            TSConstructor =             { fg = solarized.purple}, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
            TSConstant =                { fg = solarized.yellow },    -- For constants
            TSConstBuiltin =            { fg = solarized.magenta },    -- For constant that are built in the language: `nil` in Lua.
            TSConstMacro =              { fg = solarized.blue },    -- For constants that are defined by macros: `NULL` in C.
            TSMethodCall =              { fg = solarized.blue },    -- For constants that are defined by macros: `NULL` in C.
            TSError =                   { fg = solarized.error, style = 'bold' },    -- For syntax/parser errors.
            TSException =               { fg = solarized.yellow, style = 'bold' },    -- For exception related keywords.
            TSField =                   { fg = solarized.base0 }, -- For fields.
            TSFloat =                   { fg = solarized.red },    -- For floats.
            TSFuncMacro =               { fg = solarized.blue },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
            TSInclude =                 { fg = solarized.green, style = 'bold' },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
            TSLabel =                   { fg = solarized.red }, -- For labels: `label:` in C and `:label:` in Lua.
            TSNamespace =               { fg = solarized.blue },    -- For identifiers referring to modules and namespaces.
            --TSNone =                    { },    -- TODO: docs
            TSNumber =                  { fg = solarized.cyan },    -- For all numbers
            TSOperator =                { fg = solarized.green}, -- For any operator: `+`, but also `->` and `*` in C.
            TSParameter =               { fg = solarized.purple }, -- For parameters of a function.
            TSParameterReference=       { fg = solarized.green },    -- For references to parameters of a function.
            TSProperty =                { fg = solarized.green }, -- Same as `TSField`.
            TSPunctDelimiter =          { fg = solarized.green }, -- For delimiters ie: `.`
            TSPunctBracket =            { fg = solarized.gray }, -- For brackets and parens.
            TSPunctSpecial =            { fg = solarized.purple }, -- For special punctutation that does not fall in the catagories before.
            TSString =                  { fg = solarized.cyan },    -- For strings.
            TSStringRegex =             { fg = solarized.blue }, -- For regexes.
            TSStringEscape =            { fg = solarized.fg }, -- For escape characters within a string.
            TSSymbol =                  { fg = solarized.yellow},    -- For identifiers referring to symbols or atoms.
            TSType =                    { fg = solarized.yellow },    -- For types.
            TSTypeBuiltin =             { fg = solarized.yellow },    -- For builtin types.
            TSTag =                     { fg = solarized.red, style = 'bold' },    -- Tags like html tag names.
            TSTagDelimiter =            { fg = solarized.yellow },    -- Tag delimiter like `<` `>` `/`
            TSText =                    { fg = solarized.text },    -- For strings considered text in a markup language.
            TSTextReference =           { fg = solarized.yellow }, -- FIXME
            TSEmphasis =                { fg = solarized.paleblue, style = 'bold' },    -- For text to be represented with emphasis.
            TSUnderline =               { fg = solarized.fg, bg = solarized.none, style = 'underline' },    -- For text to be represented with an underline.
            TSStrike =                  { },    -- For strikethrough text.
            TSTitle =                   { fg = solarized.paleblue, bg = solarized.none, style = 'bold' },    -- Text that is part of a title.
            TSLiteral =                 { fg = solarized.fg},    -- Literal text.
            TSURI =                     { fg = solarized.link },    -- Any URI like a link or email.
        }

        -- Options:

        -- Italic comments
        if vim.g.solarized_italic_comments == true then
            treesitter.TSComment=                  { fg = solarized.comments , bg = solarized.none, style = 'bold,italic' }    -- For comment blocks.
        else
            treesitter.TSComment=                  { fg = solarized.comments }    -- For comment blocks.
        end

        if vim.g.solarized_italic_keywords == true then
            treesitter.TSConditional =             { fg = solarized.green, style = 'italic' }    -- For keywords related to conditionnals.
            treesitter.TSKeyword =                 { fg = solarized.green, style = 'italic' } -- For keywords that don't fall in previous categories.
            treesitter.TSRepeat =                  { fg = solarized.green, style = 'bold,italic' }    -- For keywords related to loops.
            treesitter.TSKeywordFunction =         { fg = solarized.green, style = 'bold,italic' } -- For keywords used to define a fuction.
        else
            treesitter.TSConditional =             { fg = solarized.green}    -- For keywords related to conditionnals.
            treesitter.TSKeyword =                 { fg = solarized.green} -- For keywords that don't fall in previous categories.
            treesitter.TSRepeat =                  { fg = solarized.green, style = 'bold' }    -- For keywords related to loops.
            treesitter.TSKeywordFunction =         { fg = solarized.green } -- For keywords used to define a fuction.
        end

        if vim.g.solarized_italic_functions == true then
            treesitter.TSFunction =                { fg = solarized.blue, style = 'bold,italic' }    -- For fuction (calls and definitions).
            treesitter.TSMethod =                  { fg = solarized.blue, style = 'bold,italic' }    -- For method calls and definitions.
            treesitter.TSFuncBuiltin =             { fg = solarized.purple, style = 'bold,italic' }    -- For builtin functions: `table.insert` in Lua.
        else
            treesitter.TSFunction =                { fg = solarized.blue}    -- For fuction (calls and definitions).
            treesitter.TSMethod =                  { fg = solarized.blue}    -- For method calls and definitions.
            treesitter.TSFuncBuiltin =             { fg = solarized.purple, style = 'bold' }    -- For builtin functions: `table.insert` in Lua.
        end

        if vim.g.solarized_italic_variables == true then
            treesitter.TSVariable =                { fg = solarized.base0, style = 'italic' } -- Any variable name that does not have another highlight.
            treesitter.TSVariableBuiltin =         { fg = solarized.base0, style = 'italic' } -- Variable names that are defined by the languages, like `this` or `self`.
        else
            treesitter.TSVariable =                { fg = solarized.base0} -- Any variable name that does not have another highlight.
            treesitter.TSVariableBuiltin =         { fg = solarized.base0} -- Variable names that are defined by the languages, like `this` or `self`.
        end

        return treesitter
    end

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError =            { fg = solarized.error }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError =               { fg = solarized.error }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError =           { fg = solarized.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =        { fg = solarized.error }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = solarized.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning =          { fg = solarized.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = solarized.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = solarized.yellow}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = solarized.yellow}, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = solarized.yellow }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation =      { fg = solarized.paleblue }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation =         { fg = solarized.paleblue },  -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =     { fg = solarized.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation =  { fg = solarized.paleblue }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = solarized.paleblue }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint =             { fg = solarized.purple  },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint =                { fg = solarized.purple  }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint =            { fg = solarized.purple  }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =         { fg = solarized.purple  }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = solarized.paleblue }, -- used to underline "Hint" diagnostics.
        LspReferenceText =                      { fg = solarized.accent, bg = solarized.highlight }, -- used for highlighting "text" references
        LspReferenceRead =                      { fg = solarized.accent, bg = solarized.highlight }, -- used for highlighting "read" references
        LspReferenceWrite =                     { fg = solarized.accent, bg = solarized.highlight }, -- used for highlighting "write" references
    }

    return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText =                        { fg = solarized.text },
        LspTroubleCount =                       { fg = solarized.purple, bg = solarized.active },
        LspTroubleNormal =                      { fg = solarized.fg, bg = solarized.sidebar },

        -- Diff
        diffAdded =                             { fg = solarized.green },
        diffRemoved =                           { fg = solarized.red },
        diffChanged =                           { fg = solarized.yellow },
        diffOldFile =                           { fg = solarized.yelow },
        diffNewFile =                           { fg = solarized.orange },
        diffFile =                              { fg = solarized.blue },
        diffLine =                              { fg = solarized.comments },
        diffIndexLine =                         { fg = solarized.purple },

        -- Neogit
        NeogitBranch =                          { fg = solarized.paleblue },
        NeogitRemote =                          { fg = solarized.purple },
        NeogitHunkHeader =                      { fg = solarized.fg, bg = solarized.highlight },
        NeogitHunkHeaderHighlight =             { fg = solarized.blue, bg = solarized.contrast },
        NeogitDiffContextHighlight =            { fg = solarized.text, bg = solarized.contrast },
        NeogitDiffDeleteHighlight =             { fg = solarized.red },
        NeogitDiffAddHighlight =                { fg = solarized.green },

        -- GitGutter
        GitGutterAdd =                          { fg = solarized.green }, -- diff mode: Added line |diff.txt|
        GitGutterChange =                       { fg = solarized.yellow }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                       { fg = solarized.red }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                           { fg = solarized.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                         { fg = solarized.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                         { fg = solarized.green }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                        { fg = solarized.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                      { fg = solarized.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                      { fg = solarized.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                        { fg = solarized.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                      { fg = solarized.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                      { fg = solarized.red }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder =                 { fg = solarized.cyan },
        TelescopeResultsBorder =                { fg = solarized.purple },
        TelescopePreviewBorder =                { fg = solarized.green },
        TelescopeSelectionCaret =               { fg = solarized.purple },
        TelescopeSelection =                    { fg = solarized.purple },
        TelescopeMatching =                     { fg = solarized.cyan },
        TelescopeNormal =                       { fg = solarized.fg, bg = solarized.none },

        -- NvimTree
        NvimTreeRootFolder =                    { fg = solarized.blue, style = "bold" },
        NvimTreeGitDirty =                      { fg = solarized.yellow },
        NvimTreeGitNew =                        { fg = solarized.green },
        NvimTreeImageFile =                     { fg = solarized.yellow },
        NvimTreeExecFile =                      { fg = solarized.green },
        NvimTreeSpecialFile =                   { fg = solarized.purple , style = "underline" },
        NvimTreeFolderName=                     { fg = solarized.paleblue },
        NvimTreeEmptyFolderName=                { fg = solarized.disabled },
        NvimTreeFolderIcon=                     { fg = solarized.accent },
        NvimTreeIndentMarker =                  { fg  = solarized.disabled },
        LspDiagnosticsError =                   { fg = solarized.error },
        LspDiagnosticsWarning =                 { fg = solarized.yellow },
        LspDiagnosticsInformation =             { fg = solarized.paleblue },
        LspDiagnosticsHint =                    { fg = solarized.purple },

        -- WhichKey
        WhichKey =                              { fg = solarized.accent , style = 'bold'},
        WhichKeyGroup =                         { fg = solarized.text },
        WhichKeyDesc =                          { fg = solarized.blue, style = 'italic' },
        WhichKeySeperator =                     { fg = solarized.fg },
        WhichKeyFloating =                      { bg = solarized.float },
        WhichKeyFloat =                         { bg = solarized.float },

        -- Cmp
        CmpItemAbbrMatchDefault =               { fg = solarized.fg, bg = solarized.accent },
        CmpItemAbbrMatchFuzzyDefault =          { fg = solarized.fg, bg = solarized.accent },

        -- LspSaga
        DiagnosticError =                       { fg = solarized.error },
        DiagnosticWarning =                     { fg = solarized.yellow },
        DiagnosticInformation =                 { fg = solarized.paleblue },
        DiagnosticHint =                        { fg = solarized.purple },
        DiagnosticTruncateLine =                { fg = solarized.fg },
        LspFloatWinNormal =                     { bg = solarized.contrast },
        LspFloatWinBorder =                     { fg = solarized.purple },
        LspSagaBorderTitle =                    { fg = solarized.cyan },
        LspSagaHoverBorder =                    { fg = solarized.paleblue },
        LspSagaRenameBorder =                   { fg = solarized.green },
        LspSagaDefPreviewBorder =               { fg = solarized.green },
        LspSagaCodeActionBorder =               { fg = solarized.blue },
        LspSagaFinderSelection =                { fg = solarized.green },
        LspSagaCodeActionTitle =                { fg = solarized.paleblue },
        LspSagaCodeActionContent =              { fg = solarized.purple },
        LspSagaSignatureHelpBorder =            { fg = solarized.pink },
        ReferencesCount =                       { fg = solarized.purple },
        DefinitionCount =                       { fg = solarized.purple },
        DefinitionIcon =                        { fg = solarized.blue },
        ReferencesIcon =                        { fg = solarized.blue },
        TargetWord =                            { fg = solarized.cyan },

        -- BufferLine
        BufferLineIndicatorSelected =           { fg = solarized.accent },
        BufferLineFill =                        { bg = solarized.bg_alt },

        -- Sneak
        Sneak =                                 { fg = solarized.bg, bg = solarized.accent },
        SneakScope =                            { bg = solarized.selection },

        -- Indent Blankline
        IndentBlanklineChar =                   { fg = solarized.charcoal},
        IndentBlanklineContextChar =            { fg = solarized.comments },

	 -- Nvim dap
         DapBreakpoint =                        { fg = solarized.red },
         DapStopped =                           { fg = solarized.green },

     -- Python
       pythonTsField =                          { fg = solarized.base0 },
       pythonTSConstructor =                    { fg = solarized.yellow },
       pythonTSVariableBuiltin =                { fg = solarized.magenta }

    }

    -- Options:

    -- Disable nvim-tree background
        if vim.g.solarized_disable_background == true then
            plugins.NvimTreeNormal =                        { fg = solarized.fg, bg = solarized.none }
        else
            plugins.NvimTreeNormal =                        { fg = solarized.fg, bg = solarized.sidebar }
        end

    return plugins

end

return theme
