return {
  "akinsho/toggleterm.nvim",
  version = "*",
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        direction = "horizontal",
        size = function(term)
          return math.floor(vim.o.lines * 0.4)
        end,
        open_mapping = [[<C-j>]],
        shade_terminals = false,
        start_in_insert = true,
        persist_size = true,
        close_on_exit = true,
      })

      -- Transparency for ToggleTerm
      vim.api.nvim_set_hl(0, "ToggleTerm", { bg = "none" })
      vim.api.nvim_set_hl(0, "ToggleTermBorder", { bg = "none", fg = "none" })
    end,
  },
}
