return {
  'chrisgrieser/nvim-recorder',
  dependencies = 'rcarriga/nvim-notify', -- optional
  opts = {},
  config = function()
    require('recorder').setup {
      mapping = {
        startStopRecording = 'q',
        playMacro = 'Q',
      },
    }

    local lualineZ = require('lualine').get_config().sections.lualine_z or {}
    local lualineY = require('lualine').get_config().sections.lualine_y or {}
    table.insert(lualineZ, { require('recorder').recordingStatus })
    table.insert(lualineY, { require('recorder').displaySlots })

    require('lualine').setup {
      sections = {
        lualine_y = lualineY,
        lualine_z = lualineZ,
      },
    }
  end,
}
