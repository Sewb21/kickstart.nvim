-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    cmd = {
      'NvimTreeOpen',
      'NvimTreeClose',
      'NvimTreeToggle',
      'NvimTreeFindFile',
      'NvimTreeFindFileToggle',
    },
    keys = {
      { '<C-e>', "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>", desc = 'NvimTree' },
    },
    config = function()
      require 'custom.plugins.config.tree'
    end,
  },
  {
    'f-person/git-blame.nvim',
  },
}
