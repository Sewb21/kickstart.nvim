-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- {
  --   'nvim-tree/nvim-tree.lua',
  --   version = '*',
  --   lazy = false,
  --   dependencies = {
  --     'nvim-tree/nvim-web-devicons',
  --   },
  --   cmd = {
  --     'NvimTreeOpen',
  --     'NvimTreeClose',
  --     'NvimTreeToggle',
  --     'NvimTreeFindFile',
  --     'NvimTreeFindFileToggle',
  --   },
  --   config = function()
  --     require 'custom.plugins.config.tree'
  --   end,
  -- },
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
      { '<Leader>at', '<cmd>ToggleTerm direction=float<CR>', desc = 'terminal float' },
    },
    config = function()
      require 'custom.plugins.config.toggleterm'
    end,
  },
}
