--------------------------------- NOTES ---------------------------------


" NOTES
" check mapping with :verbose map ____


--------------------------------- LOCAL ---------------------------------


local map = vim.api.nvim_set_keymap


-------------------------------- GLOBAL --------------------------------

-- Kill search on escape
map('n', '<S-y>', 'y$', {silent = true})
  nnoremap <esc> :noh<return><esc>


-- Open manual over word
map('n', '<M-m>', ':execute "help " . expand("<cword>")<cr>', {silent = true})
  -- OLD:
  -- noremap <C-m> :call <SNR>23_show_documentation()<CR>
  -- noremap <C-m> :help expand("<cword>")<cr>


-- Fix Vim conventions
map('n', '<S-y>', 'y$', {silent = true})
map('n', 'E', 'ge', {silent = true})
-- map('n', '<S-v>', 'v$', {silent = true})
-- map('n', 'vv', '0v$', {silent = true})


-- Window navigation
map('n', '<C-h>', '<C-w>h', {silent = true})
map('n', '<C-j>', '<C-w>j', {silent = true})
map('n', '<C-k>', '<C-w>k', {silent = true})
map('n', '<C-l>', '<C-w>l', {silent = true})


-- Buffer navigation
map('n', '<BS>', ':bnext<CR>', {noremap = true, silent = true})
  -- map('n', '<BS>', ':BufferNext<CR>', {noremap = true, silent = true})
map('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})
  -- map('n', '<S-TAB>', ':BufferPrev<CR>', {noremap = true, silent = true})
-- NOTE: TAB and <C-i> amount to the same in the terminal and so best to
-- avoid remapping TAB so as to preserve the functionality of <C-i>


-- File navigation
map('n', '<C-y>', '3<C-y>', {noremap = true, silent = true})
map('n', '<C-e>', '3<C-e>', {noremap = true, silent = true})


-- Horizontal line movement
map('n', '<S-h>', 'g^', {noremap = true, silent = true})
map('n', '<S-h>', 'g$', {noremap = true, silent = true})
map('v', '<S-h>', 'g^', {noremap = true, silent = true})
map('v', '<S-h>', 'g$', {noremap = true, silent = true})


-- Display line movements
map('n', '<S-k>', 'gk', {silent = true})
map('n', '<S-k>', 'gj', {silent = true})
map('v', '<S-k>', 'gk', {silent = true})
map('v', '<S-k>', 'gj', {silent = true})


-- Resizing windows
map('n', '<M-l>', ':vert resize +2<CR>', {noremap = true, silent = true})
map('n', '<M-h>', ':vert resize -2<CR>', {noremap = true, silent = true})
-- map('n', '<M-k>', ':resize +2<CR>', {noremap = true, silent = true})
-- map('n', '<M-j>', ':resize -2<CR>', {noremap = true, silent = true})


-- Drag selection
map('v', '<M-k>', ":m '<-2<CR>gv", {noremap = true, silent = true})
map('v', '<M-j>', ":m '>+1<CR>gv", {noremap = true, silent = true})
map('n', '<M-k>', "ddkP", {noremap = true, silent = true})
map('n', '<M-j>', "ddp", {noremap = true, silent = true})
map('i', '<M-k>', "<esc>ddkP", {noremap = true, silent = true})
map('i', '<M-j>', "<esc>ddp", {noremap = true, silent = true})
-- map('v', '<M-k>', ":m '<-2<CR>gv=gv", {noremap = true, silent = true})
-- map('v', '<M-j>', ":m '>+1<CR>gv=gv", {noremap = true, silent = true})


-- LSP
map('n', '<M-m>', ':Lspsaga hover_doc<CR>', {noremap = true, silent = true})
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>',
    {noremap = true, silent = true})
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>',
    {noremap = true, silent = true})
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>',
    {noremap = true, silent = true})
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>',
    {noremap = true, silent = true})
-- map('n', 'ca', ':Lspsaga code_action<CR>', { noremap=true, silent=true }) -- in whichkey
map('n', '<C-k>', ':Lspsaga diagnostic_jump_prev<CR>',
    {noremap = true, silent = true})
map('n', '<C-j>', ':Lspsaga diagnostic_jump_next<CR>',
    {noremap = true, silent = true})
-- scroll down hover doc or scroll in definition preview
map('n', '<Down>',
    '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>',
    {noremap = true, silent = true})
-- scroll up hover doc
map('n', '<Up>',
    '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>',
    {noremap = true, silent = true})


-- Reindent paste
map('n', 'p', 'p`[v`[=', {noremap = true, silent = true})


-- Stay centered
map('n', 'n', 'zz', {noremap = true, silent = true})
-- map('n', 'n', 'nzzzv', {noremap = true, silent = true})
-- map('n', 'N', 'Nzzzv', {noremap = true, silent = true})
-- map('n', 'J', 'mzJ`z', {noremap = true, silent = true})


-- Comment
map('n', '<C-\>', ':CommentToggle<cr>', {noremap = true, silent = true})


-- Better Indenting
map('n', '<', '<S-v><<esc>', {noremap = true, silent = true})
map('n', '>', '<S-v>><esc>', {noremap = true, silent = true})
map('v', '<', '<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})


-------------------------------- UNMAP --------------------------------

map('n', 'Q', '<NOP>', {noremap = true, silent = true})
map('n', '<C-z>', '<NOP>', {noremap = true, silent = true})


-------------------------------- PLUGIN --------------------------------

-- " Move to word
--   map  <C-f> <Plug>(easymotion-bd-w)
--   nmap <C-f> <Plug>(easymotion-overwin-w)

-- " Terminal mappings
--   nnoremap  <C-t> :FloatermToggle<CR>
--   tnoremap <C-t> <C-\><C-n>:FloatermToggle<CR>
--   " nnoremap  <leader>t :tab ter<CR>
--   " noremap! <leader>t <Esc>:FloatermToggle<CR>i
--   " tnoremap  <leader>d <C-\><C-n>:bd!<CR>

-- " Better nav for omnicomplete
--   inoremap <expr> <c-j> ("\<C-n>")
--   inoremap <expr> <c-k> ("\<C-p>")

-- " remap Return to save
--   nmap <CR> <plug>(vimtex-context-menu)

-- " <TAB>: completion.
--   inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

-- " Comment out line
--   nnoremap <C-\> :Commentary<CR>
--   vnoremap <C-\> :Commentary<CR>

-- " Fuzzy Search
--   nnoremap <C-p> :Files<CR>

-- " Spelling: http://vimdoc.sourceforge.net/htmldoc/spell.html
--   nnoremap <C-s> a<C-X><C-S>
--   " function! FzfSpellSink(word)
--   "   exe 'normal! "_ciw'.a:word
--   " endfunction
--   " function! FzfSpell()
--   "   let suggestions = spellsuggest(expand("<cword>"))
--   "   return fzf#run({'source': suggestions, 'sink': function("FzfSpellSink"), 'down': 10 })
--   " endfunction
--   " nnoremap z= :call FzfSpell()<CR>

-- " Use tab for trigger completion with characters ahead and navigate.
--   inoremap <silent><expr> <C-j>
--         \ pumvisible() ? "\<C-n>" :
--         \ <SID>check_back_space() ? "\<TAB>" :
--         \ coc#refresh()
--   inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

-- " Use <c-space> to trigger completion.
--   inoremap <silent><expr> <c-space> coc#refresh()

-- " GoTo code navigation.
--   nmap <silent> gd <Plug>(coc-definition)
--   nmap <silent> gr <Plug>(coc-references)
--   " nmap <silent> gy <Plug>(coc-type-definition)
--   " nmap <silent> gi <Plug>(coc-implementation)

-- " Markdown
--   let g:markdown_mapping_switch_status = '<Space>ms'
--   " nnoremap <Space>ft <Space>mf
--   " nmap <C-s> <Plug>MarkdownPreview
--   " nmap <M-s> <Plug>MarkdownPreviewStop
--   " nmap <C-p> <Plug>MarkdownPreviewToggle

-- " Snippets in Coc
--   " Use <C-l> for trigger snippet expand.
--     imap <C-l> <Plug>(coc-snippets-expand)
--   " Use <C-j> for jump to next placeholder, it's default of coc.nvim
--     let g:coc_snippet_next = '<CR>'
--   " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
--     let g:coc_snippet_prev = '<TAB>'
--   " scroll through autocomplete in commandline tab-menu
--     cnoremap <C-j> <C-n>
--     cnoremap <C-k> <C-p>

