
--------------------------- GENERAL SETTINGS ---------------------------

vim.go.leader = "space"
vim.go.termguicolors = true
vim.go.showtabline = 2 -- always show buffer tabs
vim.go.hidden = true -- allow multiple buffers to be open
vim.wo.wrap = true -- don't wrap line
vim.wo.number = true -- number lines
vim.wo.relativenumber = true
vim.go.cursorline = true -- highlight current line
vim.go.splitbelow = true -- hsplit below
vim.go.splitright = true -- vsplit to the right
vim.go.colorcolumn = "99999" -- fixes indentline for now
vim.go.hlsearch = true -- highlight matches on previous search pattern
vim.go.ignorecase = true -- ignore case in search patterns
vim.go.smartcase = true -- Case sensitive if search has a capital letter
vim.go.mouse = "a" -- Enable mouse
vim.go.scrolloff = 8 -- Start scrolling before reaching the bottom/top
-- vim.go.sidescrolloff = 8 start scrolling before end of line

-- Use undofile instead of swap files for history
vim.go.swapfile = os.getenv("HOME") .. "/.cache/nvim/swap/"
vim.go.backup = false
vim.go.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir/"
vim.go.undofile = true

vim.go.expandtab = true -- Convert tabs to spaces
vim.go.nosmartindent = true -- prevents extra indenting 
-- vim.o.smartindent = true -- Makes indenting smart
vim.go.smarttab = true
vim.go.autoindent = true -- Auto indent
vim.go.shiftwidth = 2 -- the number of spaces inserted for indentation
vim.go.tabstop = 2 -- insert 2 spaces for a tab
-- indentexpr = "" -- was changing line indenting?
-- indentkeys = "" -- was changing line indenting?

vim.go.fileencoding = "utf-8" -- File encoding
vim.go.pumheight = 10 -- Popup menu height
vim.go.cmdheight = 1 -- Space for cmd messages
vim.go.laststatus = 2 -- Always display the status line
vim.go.conceallevel = 0 -- Show `` in markdown files
vim.go.showmode = true -- Hide the editing mode
vim.go.writebackup = false -- This is recommended by coc
vim.go.updatetime = 300 -- Faster completion
vim.go.timeoutlen = 100 -- By default timeoutlen is 1000 ms
vim.go.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.wo.signcolumn = "yes"
-- vim.go.guifont = "monospace:h17" -- the font used in graphical neovim
vim.go.autoread = true

vim.go.title = true -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
vim.go.numberwidth = 2 -- set number column width to 2 {default 4}
vim.go.linebreak = true -- prevents words from breaking over a line
vim.go.breakindent = true -- indent wrapped lines
vim.go.showbreak = '  ' -- indent wrapped lines amount
vim.go.spell = true -- turns spelling on
vim.go.spelllang = "en_gb" -- sets spelling dictionary
vim.go.noshowmode = true -- We don't need to see things like -- INSERT -- 



------------------------------- VIM CMDS -------------------------------

vim.cmd('syntax on') -- syntax highlighting
vim.cmd('set iskeyword+=-') -- dash separated words as a text object
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set inccommand=split') -- Make substitution work in realtime
vim.cmd('set shell=/bin/fish')

vim.cmd('complete+=kspell') -- set spell spelllang=en_gb
vim.cmd('autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_gb')
-- vim.cmd('path+=**') -- search recursively based on your cwd




------------------------------ ABANDONED ------------------------------

-- vim.go.line_wrap_cursor_movement = true
-- vim.go.transparent_window = false

--vim.go.format_on_save = {
--  ---@usage pattern string pattern used for the autocommand (Default: '*')
--  pattern = "*",
--  ---@usage timeout number timeout in ms for the format request (Default: 1000)
--  timeout = 1000,
--  }
--
-- Font = 'FiraCode Nerd Font:h17'
-- vim.go.completeopt = { "menuone", "noselect" },
-- vim.go.foldmethod = "manual" -- folding, set to "expr" for treesitter based folding
-- vim.go.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding

