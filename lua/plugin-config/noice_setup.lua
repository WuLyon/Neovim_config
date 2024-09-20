require("noice").setup{
  cmdline = {
    enabled = true,
    view = "cmdline_popup",
    format = {
      cmdline = { pattern = "^:", icon = ":", lang = "vim" }
    },
  },
  messages = {
    enable = true,
    view = 'mini',
  },
  popupmenu = {
    enabled = true,
  },
  views = {
    cmdline_popup = {
      position = {
        row = "5",
        col = "50%",
      },
    },
  },
}

require("notify").setup{
  background_colour = "#000000"
}
