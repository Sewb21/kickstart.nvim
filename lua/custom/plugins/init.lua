-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'f-person/git-blame.nvim',
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require 'custom.plugins.config.harpoon'
    end,
  },
  {
    'ThePrimeagen/refactoring.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require 'custom.plugins.config.refactoring'
    end,
  },
  {
    'aznhe21/actions-preview.nvim',
    config = function()
      vim.keymap.set({ 'v', 'n' }, 'ca', require('actions-preview').code_actions)
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    keys = {
      { '<Leader>tf', '<cmd>ToggleTerm direction=float<CR>', desc = 'terminal float' },
      { '<Leader>tt', '<cmd>ToggleTerm direction=horizontal<CR>', desc = 'terminal top' },
      { '<Leader>tb', '<cmd>ToggleTerm direction=horizontal size=20<CR>', desc = 'terminal bottom' },
      { '<Leader>tl', '<cmd>ToggleTerm direction=vertical<CR>', desc = 'terminal left' },
      { '<Leader>tr', '<cmd>ToggleTerm direction=vertical size=40<CR>', desc = 'terminal right' },
      { '<Leader>ts', '<cmd>ToggleTerm<CR>', desc = 'terminal split' },
    },
    config = function()
      require 'custom.plugins.config.toggleterm'
    end,
  },
}
