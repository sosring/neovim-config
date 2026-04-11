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
  kanagawa = {
    plugin = "thesimonho/kanagawa-paper.nvim",
    name = "kanagawa-paper",
    bg = "dark",
  },
  -- Newspaper style
  dookie = {
    plugin = "pebeto/dookie.nvim",
    name = "dookie",
    bg = "dark",
  },
  -- crt style
  mfd = {
    plugin = "kungfusheep/mfd.nvim",
    name = "MFD-FLIR",
    bg = "dark",
  },
  koda = {
    plugin = "oskarnurm/koda.nvim",
    name = "koda",
    bg = "dark",
  },
}

M.active = M.themes.koda

return M
