return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional but pretty icons ✨
  },
  config = function()
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      sync_root_with_cwd = true, -- changes tree root when cwd changes
      update_focused_file = {
        enable = true,
        update_root = true, -- updates root when you open a file in a new dir
      },
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    })

    -- Keymap
    vim.keymap.set("n", "<M-f>", ":NvimTreeToggle<CR>", { silent = true })
  end,
}
