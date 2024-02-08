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
    vim.keymap.set(
      'n',
      '<leader>gi',
      '<cmd>lua require("goto-preview").goto_preview_implementation()<CR>',
      { noremap = true, silent = true, desc = 'Goto Preview Implementation' }
    )
    vim.keymap.set(
      'n',
      '<leader>gr',
      '<cmd>lua require("goto-preview").goto_preview_references()<CR>',
      { noremap = true, silent = true, desc = 'Goto Preview References' }
    )

    require('goto-preview').setup {}
  end,
}
