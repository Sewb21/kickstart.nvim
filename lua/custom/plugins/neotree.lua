-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      vim.keymap.set('n', '<leader>fe', ':Neotree toggle reveal<CR>', { desc = 'Toggle Explorer' }),
      vim.keymap.set('n', '<leader>fs', ':Neotree action=show reveal<CR>', { desc = 'Show file explorer' }),
      event_handlers = {
        {
          event = 'file_opened',
          handler = function(file_path)
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
      window = {
        width = 100,
      },
    }
  end,
}
