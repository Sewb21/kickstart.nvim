-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'f-person/git-blame.nvim',
  },
  {
    'aznhe21/actions-preview.nvim',
    config = function()
      vim.keymap.set({ 'v', 'n' }, 'ca', require('actions-preview').code_actions)
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
  {
    'kylechui/nvim-surround',
    version = '*',
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {}
    end,
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    keys = {
      {

        '<leader>mp',
        '<cmd>MarkdownPreview<CR>',
        'Markdown Preview',
      },
    },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },
  {
    'tzachar/local-highlight.nvim',
    config = function()
      require('local-highlight').setup()
    end,
  },
}
