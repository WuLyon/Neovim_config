-- lua/noice_setup.lua
local M = {}

function M.setup()
  require("noice").setup({
    cmdline = {
      enabled = true,
      view = "cmdline_popup",
      format = {
        cmdline = { pattern = "^:", icon = ":", lang = "vim" }
      }
    },
    views = {
      cmdline_popup = {
        position = {
          row = 5,
          col = "50%",
        },
      },
    },
    popupmenu = {
      enabled = true,
    },
  })

  require("notify").setup({
    background_colour = "#000000"
  })
end

return M
