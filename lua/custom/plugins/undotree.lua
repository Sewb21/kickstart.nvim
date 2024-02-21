return {
  'mbbill/undotree',
  config = function()
    vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true, silent = true })
    vim.g.undotree_WindowLayout = 2
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_SplitWidth = 35
    vim.g.undotree_SplitMinWidth = 35
    vim.g.undotree_SplitRight = 1
    vim.g.undotree_SplitBelow = 1
  end,
}
