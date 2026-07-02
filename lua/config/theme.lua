local M = {}

M.themes = {
  -- crt style
  mfd = {
    plugin = "kungfusheep/mfd.nvim",
    name = "MFD-FLIR-BH",
    bg = "dark",
  },
  -- Monochrome yellow
  koda = {
    plugin = "oskarnurm/koda.nvim",
    name = "koda",
    bg = "dark",
  },
  -- Kanagawa
  kanagawa = {
    plugin = "rebelot/kanagawa.nvim",
    name = "kanagawa-dragon",
    bg = "dark",
  },
}

M.active = M.themes.mfd

return M
