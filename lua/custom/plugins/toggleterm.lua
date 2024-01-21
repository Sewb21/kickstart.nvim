return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    keys = {
      { '<Leader>tf', '<cmd>ToggleTerm direction=float<CR>', desc = 'terminal float' },
      { '<Leader>tt', '<cmd>ToggleTerm direction=horizontal<CR>', desc = 'terminal top' },
      { '<Leader>tb', '<cmd>ToggleTerm direction=horizontal size=20<CR>', desc = 'terminal bottom' },
      { '<Leader>tl', '<cmd>ToggleTerm direction=vertical<CR>', desc = 'terminal left' },
      { '<Leader>tr', '<cmd>ToggleTerm direction=vertical size=40<CR>', desc = 'terminal right' },
      { '<Leader>t1', '<cmd>ToggleTerm 1<C-\\><CR>', 'which_key_ignore = true', desc = 'terminal 1' },
      { '<Leader>t2', '<cmd>ToggleTerm 2<C-\\><CR>', 'which_key_ignore = true', desc = 'terminal 2' },
      { '<Leader>t3', '<cmd>ToggleTerm 3<C-\\><CR>', 'which_key_ignore = true', desc = 'terminal 3' },
      { '<Leader>t4', '<cmd>ToggleTerm 4<C-\\><CR>', 'which_key_ignore = true', desc = 'terminal 4' },
      { '<Leader>t5', '<cmd>ToggleTerm 5<C-\\><CR>', 'which_key_ignore = true', desc = 'terminal 5' },
      { '<Leader>t6', '<cmd>ToggleTerm 6<C-\\><CR>', 'which_key_ignore = true', desc = 'terminal 6' },
      { '<Leader>t7', '<cmd>ToggleTerm 7<C-\\><CR>', 'which_key_ignore = true', desc = 'terminal 7' },
      { '<Leader>t8', '<cmd>ToggleTerm 8<C-\\><CR>', 'which_key_ignore = true', desc = 'terminal 8' },
      { '<Leader>t9', '<cmd>ToggleTerm 9<C-\\><CR>', 'which_key_ignore = true', desc = 'terminal 9' },
      { '<Leader>t0', '<cmd>ToggleTerm 10<C-\\><CR>', 'which_key_ignore = true', desc = 'terminal 10' },
    },
    config = function()
      require('toggleterm').setup {

        -- size can be a number or function which is passed the current terminal
        size = function(term)
          if term.direction == 'horizontal' then
            return 15
          elseif term.direction == 'vertical' then
            return vim.o.columns * 0.4
          end
        end,
        open_mapping = [[<F12>]],
        highlights = {
          -- highlights which map to a highlight group name and a table of it's values
          -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
          Normal = {
            link = 'Normal',
          },
          NormalFloat = {
            link = 'Normal',
          },
          FloatBorder = {
            -- guifg = <VALUE-HERE>,
            -- guibg = <VALUE-HERE>,
            link = 'FloatBorder',
          },
        },
        shade_filetypes = {},
        shade_terminals = false,
        shading_factor = 1, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
        start_in_insert = true,
        insert_mappings = true, -- whether or not the open mapping applies in insert mode
        persist_size = true,
        direction = 'horizontal', -- | 'horizontal' | 'window' | 'float',
        close_on_exit = true, -- close the terminal window when the process exits
        shell = vim.o.shell, -- change the default shell
        -- This field is only relevant if direction is set to 'float'
        float_opts = {
          -- The border key is *almost* the same as 'nvim_win_open'
          -- see :h nvim_win_open for details on borders however
          -- the 'curved' border is a custom border type
          -- not natively supported but implemented in this plugin.
          border = 'curved', -- single/double/shadow/curved
          width = math.floor(0.7 * vim.fn.winwidth(0)),
          height = math.floor(0.8 * vim.fn.winheight(0)),
          winblend = 4,
        },
        winbar = {
          enabled = true,
        },
      }

      function _G.set_terminal_keymaps()
        local opts = { noremap = true }
        vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
        vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
        vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
        vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
        vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
      end

      vim.cmd 'autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()'
    end,
  },
}
