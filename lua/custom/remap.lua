local silent = { silent = true }

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Open explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Copilot map
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("<CR>")', { silent = true, expr = true })

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

-- Buffer
-- Switch to the next buffer
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true, desc = 'Next buffer' })
-- Switch to the previous buffer
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprev<CR>', { noremap = true, silent = true, desc = 'Previous buffer' })
-- Close the current buffer
vim.api.nvim_set_keymap('n', '<leader>bd', ':bd<CR>', { noremap = true, silent = true, desc = 'Close buffer' })
-- Close all buffers except the current one
vim.api.nvim_set_keymap('n', '<leader>ba', ':1,9bd|bd!<CR>', { noremap = true, silent = true, desc = 'Close all buffers except current' })
-- Close all buffers
vim.api.nvim_set_keymap('n', '<leader>bda', ':bufdo bd<CR>', { noremap = true, silent = true, desc = 'Close all buffers' })
-- Toggle the NvimTree file explorer
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = 'Toggle file explorer' })
-- Focus on the NvimTree file explorer (if already open)
vim.api.nvim_set_keymap('n', '<leader>E', ':NvimTreeFocus<CR>', { noremap = true, silent = true, desc = 'Focus file explorer' })

-- Don't yank on visual paste
vim.api.nvim_set_keymap('v', 'p', '"_dP', silent)
