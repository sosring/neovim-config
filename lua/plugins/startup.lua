local ascii_art = {
  "       ⣰⣿⣿⣿⣿⣿⣷⣶⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣷⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⣹⣿⣿⣿⣿⣿⣿⡽⣿⣷⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣯⣝⣻⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠈⣿⣿⡟⢿⡾⣿⠋⠿⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⡷⣼⣿⣀⠤⢀⣁⢄⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣅⣲⣿⣿⠒⢲⡄⣂⡨⠀⠀⠀⠀",
  "⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⠍⠚⠃⢯⠋⡆⠀⠀⠀⠀",
  "⠀⣼⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⡏⣀⡀⠂⠻⠀⠀⠀⠸⣆⠀⠀⠀",
  "⢸⣿⣿⣿⣿⣿⣯⢿⣿⣿⣿⣿⣿⣿⣿⣯⢛⡀⠂⠀⠀⢨⣷⣀⠀⠀",
  "⣿⣿⣿⣿⣿⣽⣿⣿⢯⣿⣿⣿⣿⠟⣿⣿⡷⣤⠀⠢⠀⠐⢻⣿⡆⠀",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣟⣾⣿⣿⡿⠀⠀⠈⣛⢷⣳⣄⣀⣶⣾⣿⣷⡀",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⢀⣭⣽⡫⢪⣿⣿⣿⣿⣿⣯⣇",
  "⣹⣿⣿⣿⣿⣿⣽⣿⣿⣿⠏⠀⠀⠀⠀⠘⠋⠀⠀⠛⢿⣿⣿⣿⣿⡏",
  "⢸⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠩⠛⠉⠉⠀",
  "⠘⣿⣿⣿⣿⣿⣿⣿⣯⡀⡀⡀⠀⠀⠀⠀⠀⣀⣔⣴⡧⠁⡀⠀⠀⠀",
  "⠀⢺⣿⣿⣿⣿⣿⣾⣧⣥⣦⣴⣶⣶⣶⣾⣴⣿⣿⣉⣠⡤⠀⠀⠀⠀",
  "⠀⠐⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠀⠀⠀⠀",
  "⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀",
}

return {
  "startup-nvim/startup.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  config = function()
    require("startup").setup({
      header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = ascii_art,
        highlight = "Statement",
        default_color = "",
        oldfiles_amount = 0,
      },

      body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Quick Access",
        margin = 5,
        content = {
          { "󰦄 Report", "edit ~/documents/markdown/report.md", "1" },
          { "SDL", "cd ~/documents/sdl | edit .", "2" },
          { "OpenGL", "cd ~/documents/opengl | edit .", "3" },
          { "Nvim Config", "cd ~/.config/nvim | edit .", "4" },
        },
        highlight = "String",
        default_color = "",
        oldfiles_amount = 0,
      },

      footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = {
          "Hello Sunshine",
        },
        highlight = "Comment",
        default_color = "",
        oldfiles_amount = 0,
      },

      options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 2, 2, 2, 1 },
      },

      mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
      },

      colors = {
        background = "#1a1b26",
        folded_section = "#56b6c2",
      },

      parts = { "header", "body", "footer" },
    })
  end,
}
