return {
  'https://github.com/adelarsq/image_preview.nvim',
  event = 'VeryLazy',
  config = function()
    require('image_preview').setup()

    require('neo-tree').setup {
      filesystem = {
        window = {
          mappings = {
            ['<leader>p'] = 'image_wezterm', -- " or another map
          },
        },
        commands = {
          image_wezterm = function(state)
            local node = state.tree:get_node()
            if node.type == 'file' then
              require('image_preview').PreviewImage(node.path)
            end
          end,
        },
      },
      event_handlers = {
        {
          event = 'file_opened',
          handler = function()
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
    }
  end,
}
