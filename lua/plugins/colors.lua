local theme = require("config.theme")
local active_theme = theme.active

local function enable_transparency()
  local groups = {
    "Normal",
    "NormalNC",
    "NormalFloat",
    "FloatBorder",
    "SignColumn",
    "EndOfBuffer",
    "StatusLine",
    "StatusLineNC",
    "TabLine",
    "TabLineFill",
    "TabLineSel",
    "WinBar",
    "WinBarNC",
    "Pmenu",
    "NvimTreeNormal",
    "NvimTreeNormalNC",
    "TelescopeNormal",
    "TelescopeBorder",
  }
  for _, g in ipairs(groups) do
    vim.api.nvim_set_hl(0, g, { bg = "none" })
  end
end

local function apply_theme(t)
  vim.o.background = t.bg

  -- mellifluous requires setup BEFORE colorscheme is set
  -- if t.name == "mellifluous" then
  --   require("mellifluous").setup({
  --     transparent_background = {
  --       enabled = true,
  --       floating_windows = true,
  --       telescope = true,
  --       file_tree = true,
  --       cursor_line = true,
  --       status_line = false, -- lualine handles this
  --     },
  --   })
  -- end

  vim.cmd.colorscheme(t.name)
  -- enable_transparency()
end

return {
  {
    active_theme.plugin,
    priority = 1000,
    config = function()
      apply_theme(active_theme)
      -- vim.api.nvim_create_autocmd("ColorScheme", {
      --   callback = enable_transparency,
      -- })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "auto",
        component_separators = "",
        section_separators = "",
      },
    },
  },
}
