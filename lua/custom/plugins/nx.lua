return {
  {
    'Equilibris/nx.nvim',

    dependencies = {
      'nvim-telescope/telescope.nvim',
    },

    opts = {
      nx_cmd_root = 'npx nx',
      read_init = true,
    },
    -- Plugin will load when you use these keys
    keys = {
      { '<leader>nx', '<cmd>Telescope nx actions<CR>', desc = 'nx actions' },
    },
  },
}