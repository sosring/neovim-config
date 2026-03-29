local M = {}

M.themes = {
  melange = {
    plugin = "savq/melange-nvim",
    name = "melange",
    bg = "dark",
  },
  mellifluous = {
    plugin = "ramojus/mellifluous.nvim",
    name = "mellifluous",
    bg = "dark",
  },
  miasma = {
    plugin = "xero/miasma.nvim",
    name = "miasma",
    bg = "dark",
  },
  oldworld = {
    plugin = "dgox16/oldworld.nvim",
    name = "oldworld",
    bg = "dark",
  },
  kanagawa = {
    plugin = "thesimonho/kanagawa-paper.nvim",
    name = "kanagawa-paper",
    bg = "dark",
  },
}

M.active = M.themes.kanagawa

return M
