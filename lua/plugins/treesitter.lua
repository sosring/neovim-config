return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "lua",
        "c_sharp",
        "cpp", -- since you're working with C++
        "c",
        "javascript",
      },

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },

      autotag = {
        enable = true,
      },

      auto_install = false,
    })

    -- 🌳 Treesitter Folding Setup
    vim.o.foldmethod = "expr"
    vim.o.foldexpr = "nvim_treesitter#foldexpr()"
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    vim.keymap.set("n", "<leader>zo", "zR", { desc = "Open all folds" })

    vim.keymap.set("n", "<leader>zc", "zM", { desc = "Close all folds" })
  end,
}
