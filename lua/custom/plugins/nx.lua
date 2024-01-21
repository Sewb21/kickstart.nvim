return {
  {
    -- 'Equilibris/nx.nvim',
    -- Use my fork because main repo isn't working currently
    'Sewb21/nx.nvim',

    config = function()
      require('nx').setup({
        nx_cmd_root = 'npx nx',
        read_init = true,
        command_runner = require('nx.command-runners').toggleterm_runner({
          direction = 'vertical',
        }),
      })
    end,

    init = function()
      local telescope = require 'telescope'
      telescope.load_extension 'nx'
    end,

    keys = {
      { '<leader>nxg', '<cmd>Telescope nx generators<CR>', 'Nx generators' },
      { '<leader>nxx', '<cmd>Telescope nx actions<CR>', 'Nx actions' },
      { '<leader>nxa', '<cmd>Telescope nx affected<CR>', 'Nx affected' },
      { '<leader>nxr', '<cmd>Telescope nx run_many<CR>', 'Nx run many' },
    },
  },
}
