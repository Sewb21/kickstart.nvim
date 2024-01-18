return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  config = function()
    require 'custom.plugins.config.cmp'
  end,
  dependencies = {
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-calc',
    'saadparwaiz1/cmp_luasnip',
    { 'L3MON4D3/LuaSnip', dependencies = 'rafamadriz/friendly-snippets' },
    {
      'David-Kunz/cmp-npm',
      config = function()
        require 'custom.plugins.config.cmp-npm'
      end,
    },
    {
      'zbirenbaum/copilot-cmp',
      config = function()
        require('copilot_cmp').setup()
      end,
    },
    'petertriho/cmp-git',
  },
}
