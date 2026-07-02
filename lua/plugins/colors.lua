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

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none" })
  end
end

local function apply_theme(t)
  vim.o.background = t.bg
  vim.cmd.colorscheme(t.name)

  -- enable_transparency()
end

local plugins = {}

-- Add every colorscheme plugin
for _, t in pairs(theme.themes) do
  table.insert(plugins, {
    t.plugin,
    priority = 1000,
  })
end

-- Configure the active colorscheme
table.insert(plugins, {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      theme = "auto",
      component_separators = "",
      section_separators = "",
    },
  },
})

table.insert(plugins, {
  active_theme.plugin,
  priority = 1000,
  config = function()
    apply_theme(active_theme)

    -- vim.api.nvim_create_autocmd("ColorScheme", {
    --   callback = enable_transparency,
    -- })
  end,
})

return plugins
