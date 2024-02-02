return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  config = function()
    local luasnip = require 'luasnip'
    local cmp = require 'cmp'
    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match '%s' == nil
    end

    cmp.setup {
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert {
        ['<CR>'] = vim.NIL,

        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.confirm { behavior = cmp.ConfirmBehavior.Insert, select = true }
          elseif require('copilot.suggestion').is_visible() then
            require('copilot.suggestion').accept()
          elseif luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { 'i', 's' }),

        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { 'i', 's' }),
      },
      sources = {
        {
          name = 'copilot',
          priority = 10,
          max_item_count = 3,
        },
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'treesitter' },
        { name = 'calc' },
      },
    }
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
        require('cmp-npm').setup {
          ignore = {},
          only_semantic_versions = true,
        }
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
