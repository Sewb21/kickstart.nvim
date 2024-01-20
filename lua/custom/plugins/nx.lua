-- return {
-- 'Equilibris/nx.nvim',
--
-- dependencies = {
--   'nvim-telescope/telescope.nvim',
-- },
--
-- opts = {
--   nx_cmd_root = 'npx nx',
--   read_init = true,
-- },
-- -- Plugin will load when you use these keys
-- keys = {
--   { '<leader>nx', '<cmd>Telescope nx actions<CR>', desc = 'nx actions' },
-- },
-- }

-- Configure the plugin
return {
  {
    -- 'Equilibris/nx.nvim',
    -- Use my fork because main repo isn't working currently
    'Sewb21/nx.nvim',

    opts = {
      nx_cmd_root = 'npx nx',
    },

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
