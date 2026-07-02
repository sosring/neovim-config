local ascii_art = {
  "                          ",
  "                          ",
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

local header = vim.deepcopy(ascii_art)

-- Gap between artwork and menu
for _ = 1, 2 do
  table.insert(header, "")
end

return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("dashboard").setup({
        theme = "doom",
        config = {
          header = header,

          center = {
            {
              icon = "󰈔 ",
              desc = " Markdown",
              key = "1",
              key_format = "[%s]",
              action = "cd ~/documents/markdown | edit .",
            },
            -- {
            --   icon = "󰈔 ",
            --   desc = " Raylib",
            --   key = "2",
            --   key_format = "[%s]",
            --   action = "cd ~/documents/raylib | edit .",
            -- },
            {
              icon = "󰈔 ",
              desc = " Graphics",
              key = "2",
              key_format = "[%s]",
              action = "cd ~/documents/opengl | edit .",
            },
            {
              icon = "󰈔 ",
              desc = " Nvim Config",
              key = "3",
              key_format = "[%s]",
              action = "cd ~/.config/nvim | edit .",
            },
            {
              icon = "󰈔 ",
              desc = " Ghostty Config",
              key = "4",
              key_format = "[%s]",
              action = "edit ~/.config/ghostty/config",
            },
          },

          footer = {
            "",
            "Hello Sunshine",
          },
        },
      })
    end,
  },
}
