
--------------------------- GENERAL SETTINGS ---------------------------

vim.o.leader = "space"
vim.o.colorscheme = "gruvbox"
vim.o.background = "dark"
vim.o.termguicolors = true
vim.o.showtabline = 2 -- always show buffer tabs
vim.o.hidden = true -- allow multiple buffers to be open
vim.wo.wrap = true -- don't wrap line
vim.wo.number = true -- number lines
vim.wo.relativenumber = true
vim.o.cursorline = true -- highlight current line
vim.o.splitbelow = true -- hsplit below
vim.o.splitright = true -- vsplit to the right
vim.o.colorcolumn = "99999" -- fixes indentline for now
vim.o.hlsearch = true -- highlight all matches on previous search pattern
vim.o.ignorecase = true -- ignore case in search patterns
vim.o.smartcase = true -- Case sensitive if search has a capital letter
vim.o.mouse = "a" -- Enable mouse
vim.o.scrolloff = 8 -- Start scrolling before reaching the bottom/top
-- vim.o.sidescrolloff = 8 start scrolling before end of line

-- Use undofile instead of swap files for history
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir/"
vim.o.undofile = true

vim.o.expandtab = true -- Convert tabs to spaces
vim.o.nosmartindent = true -- prevents extra indenting 
-- vim.o.smartindent = true -- Makes indenting smart
vim.o.smarttab = true
vim.o.autoindent = true -- Auto indent
vim.o.shiftwidth = 2 -- the number of spaces inserted for indentation
vim.o.tabstop = 2 -- insert 2 spaces for a tab
-- indentexpr = "" -- was changing line indenting?
-- indentkeys = "" -- was changing line indenting?

vim.o.fileencoding = "utf-8" -- File encoding
vim.o.pumheight = 10 -- Popup menu height
vim.o.cmdheight = 1 -- Space for cmd messages
vim.o.laststatus = 2 -- Always display the status line
vim.o.conceallevel = 0 -- Show `` in markdown files
vim.o.showmode = false -- Hide the editing mode
vim.o.writebackup = false -- This is recommended by coc
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 100 -- By default timeoutlen is 1000 ms
vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.wo.signcolumn = "yes"
vim.o.guifont = "monospace:h17" -- the font used in graphical neovim



--------------------------------- LVIM ---------------------------------

-- TODO: continue to prefix below as needed

line_wrap_cursor_movement = true
transparent_window = false
format_on_save = {
  ---@usage pattern string pattern used for the autocommand (Default: '*')
  pattern = "*",
  ---@usage timeout number timeout in ms for the format request (Default: 1000)
  timeout = 1000,
  }
autoread = true
-- Font = 'FiraCode Nerd Font:h17'
completeopt = { "menuone", "noselect" },
foldmethod = "manual" -- folding, set to "expr" for treesitter based folding
foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
title = true -- set the title of window to the value of the titlestring
-- opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
numberwidth = 4 -- set number column width to 2 {default 4}
linebreak = true -- prevents words from breaking over a line
breakindent = true -- indent wrapped lines
showbreak = '  ' -- indent wrapped lines amount
spell = true -- turns spelling on
spelllang = "en_gb" -- sets spelling dictionary



------------------------------ VIM CMDS ------------------------------

vim.cmd('syntax on') -- syntax highlighting
vim.cmd('set iskeyword+=-') -- dash separated words as a text object
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set inccommand=split') -- Make substitution work in realtime
vim.cmd('set shell=/bin/fish')

vim.cmd('set ts=' .. TabSize)
vim.cmd('set sts=' .. TabSize)
vim.cmd('set sw=' .. TabSize)

vim.cmd('complete+=kspell') -- set spell spelllang=en_gb
vim.cmd('autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_gb')
vim.cmd('path+=**')
vim.cmd('t_Co=256') -- Support 256 colors
vim.cmd('noshowmode') -- We don't need to see things like -- INSERT -- 



------------------------------ UNRESOLVED ------------------------------

-- " set backupdir=~/.config/nvim/backup
-- " set directory=~/.config/nvim/swap//
-- " let &backupdir = expand('~/.config/nvim/backup//')') -- Folder for backup files
-- " if !isdirectory(&backupdir) | call mkdir(&backupdir, "p") | endif

