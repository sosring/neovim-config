return {
  "folke/zen-mode.nvim",
  opts = {
    backdrop = 0.95,
    on_open = function()
      vim.schedule(function()
        local groups = {
          "Normal",
          "NormalFloat",
          "SignColumn",
          "EndOfBuffer",
          "StatusLine",
          "StatusLineNC",
          "ZenBg", -- important
        }

        -- for _, group in ipairs(groups) do
        --   vim.api.nvim_set_hl(0, group, { bg = "none" })
        -- end
      end)
    end,
  },
}
