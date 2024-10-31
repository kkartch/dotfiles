
-- LazyGit
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>')

-- Window navigation
-- THESE GET OVERRIDDEN BY THE vim-tmux-navigator PLUGIN
-- vim.keymap.set('n', '<c-j>', '<c-w>j')
-- vim.keymap.set('n', '<c-k>', '<c-w>k')
-- vim.keymap.set('n', '<c-l>', '<c-w>l')
-- vim.keymap.set('n', '<c-h>', '<c-w>h')

-- Window resizing
vim.keymap.set('n', '<CR>', '<c-w>_<c-w>|')
vim.keymap.set('n', '<c-i>', '<c-w>=')

-- Nvim-Tree 
vim.keymap.set('n', '<c-y>', ':NvimTreeFindFileToggle<CR>')

-- Tab navigation
vim.keymap.set('n', '<c-t>t', ':tabnew<cr>')
vim.keymap.set('n', '<c-t>h', ':tabr<cr>')
vim.keymap.set('n', '<c-t>l', ':tabl<cr>')

-- HTML
vim.keymap.set('n', 'gho', '^lct>') -- create open tag from copied tag
vim.keymap.set('n', 'ghc', 'yyp^a/<esc>Eldt>') -- create closing tag from current tag

-- Copilot Chat
vim.keymap.set({'n', 'v'}, '<leader>aa', ":CopilotChatToggle<CR>")
vim.keymap.set({'n', 'v'}, '<leader>ar', ":CopilotChatReview<CR>")
vim.keymap.set({'n', 'v'}, '<leader>ae', ":CopilotChatExplain<CR>")
vim.keymap.set({'n', 'v'}, '<leader>af', ":CopilotChatFix<CR>")
vim.keymap.set({'n', 'v'}, '<leader>ao', ":CopilotChatOptimize<CR>")
vim.keymap.set({'n', 'v'}, '<leader>ad', ":CopilotChatDocs<CR>")
vim.keymap.set({'n', 'v'}, '<leader>at', ":CopilotChatTests<CR>")
vim.keymap.set({'n', 'v'}, '<leader>ac', ":CopilotChatCommitStaged<CR>")
