------------------------------ GENERAL SETTINGS -------------------------------
LeaderKey = ' '

Colorscheme = 'deus'
Font = 'FiraCode Nerd Font:h17'

WrapLine = true
LineNumbers = true
RelativeLineNumbers = true

CursorLine = true
IndentGuide = false -- enabled by default? (still toggleable with <leader>-I)
AutoScroll = 5 -- Scroll when this many lines from top/bottom

HighlightSearch = true -- Highlight all search matches
SearchIgnoreCase = true
HighlightYank = true

TabSize = 2
UseSpaces = true

Term = {}
Term.shell = vim.o.shell -- vim.o.shell or the path to a shell executable
Term.size = 10
Term.shade = true
Term.direction = 'horizontal' -- horizontal, vertical, window, or float
Term.floatBorder = 'shadow' -- single, double, shadow, or curved

DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')

----------------------- LANGAGE SPECIFIC SETTINGS -----------------------
-- See lua/lsp/efm/<language>.lua to add formatters or linters
-- Add languages in lua/lsp/efm/init.lua

Lua = {}
Lua.formatter = 'lua-format'
Lua.formatLineLength = 80

Shell = {}
Shell.formatter = 'shfmt'
Shell.linter = 'shellcheck'

Markdown = {}
Markdown.liveRefresh = false -- false: refresh on save
Markdown.imagePasteCommand = 'xclip -selection clipboard -t image/png -o > %s' -- Paste to file command
Markdown.imageDir = 'img' -- Sub-directory to save the image to
Markdown.imagePasteSyntax = 'html' -- Image syntax to use (html, obsidian, or a format string)
Markdown.imageDefaultWidth = 600 -- Default width of images in px (or nil for no scaling)

-------------------------- DEBUGGER SETTINGS --------------------------
Debugger = {}
Debugger.useExternalTerminal = false
Debugger.externalTerminal = nil -- path to terminal
