return {
  'rmagatti/goto-preview',
  config = function()
    vim.keymap.set(
      'n',
      '<leader>gd',
      '<cmd>lua require("goto-preview").goto_preview_definition()<CR>',
      { noremap = true, silent = true, desc = 'Goto Preview Definition' }
    )
    vim.keymap.set(
      'n',
      '<leader>gt',
      '<cmd>lua require("goto-preview").goto_preview_type_definition()<CR>',
      { noremap = true, silent = true, desc = 'Goto Preview Type Definition' }
    )
    require('goto-preview').setup {}
  end,
}
