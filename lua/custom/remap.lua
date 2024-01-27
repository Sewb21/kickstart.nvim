local silent = { silent = true }

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Copilot map
-- vim.g.copilot_no_tab_map = true
-- vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Quickfix
vim.keymap.set('n', '<Space>,', ':cp<CR>', silent)
vim.keymap.set('n', '<Space>.', ':cn<CR>', silent)

-- Don't yank on visual paste
vim.api.nvim_set_keymap('v', 'p', '"_dP', silent)

-- Move lines up, down, left and right
-- Up
vim.keymap.set('n', '<A-up>', ':m .-2<CR>==', silent)
vim.keymap.set('v', '<A-up>', ":m '<-2<CR>gv=gv", silent)
vim.keymap.set('i', '<A-up>', '<Esc>:m .-2<CR>==gi', silent)
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', silent)
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', silent)
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", silent)
-- Down
vim.keymap.set('n', '<A-down>', ':m .+1<CR>==', silent)
vim.keymap.set('i', '<A-down>', '<Esc>:m .+1<CR>==gi', silent)
vim.keymap.set('v', '<A-down>', ":m '>+1<CR>gv=gv", silent)
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', silent)
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', silent)
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", silent)
