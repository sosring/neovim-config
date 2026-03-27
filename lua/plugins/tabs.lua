return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    -- animation = true,
    -- insert_at_start = true,
    sort = {
      ignore_case = true,
      pinned = true,
      inactive_first = false,
      buffer_order = "window_number",
    },
  },
  version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
