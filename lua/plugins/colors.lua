local function enable_transparency()
  local groups = {
    "Normal",
    "NormalFloat",
    "SignColumn",
    "EndOfBuffer",
    "StatusLine",
    "StatusLineNC",
  }

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none" })
  end
end

return {
  {
    "savq/melange-nvim",
    config = function()
      vim.cmd.colorscheme("melange")
      enable_transparency()
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      theme = "melange",
      options = {
        component_separators = "",
        section_separators = "",
      },
    },
  },
}
