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
  vesper = {
    plugin = "datsfilipe/vesper.nvim",
    name = "vesper",
    bg = "dark",
  },
}

M.active = M.themes.mellifluous

return M
