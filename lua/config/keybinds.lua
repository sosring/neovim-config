vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<M-m>", ":ZenMode<CR>", { desc = "Toggle Zen Mode" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Toggle Zen Mode" })

-- Split Window
vim.keymap.set("n", "vp", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "sp", ":split<CR>", { desc = "Horizontal split" })

vim.keymap.set("n", "<Tab>", "<C-w>w", { silent = true })
-- vim.keymap.set("n", "<S-Tab>", "<C-w>W", { silent = true })

-- Window navigation
-- vim.keymap.set("n", "<leader>sj", "<C-w>h", { desc = "Move to left window" })
-- vim.keymap.set("n", "<leader>sl", "<C-w>j", { desc = "Move to bottom window" })
-- vim.keymap.set("n", "<leader>sk", "<C-w>k", { desc = "Move to top window" })
-- vim.keymap.set("n", "<leader>s;", "<C-w>l", { desc = "Move to right window" })

-- Cpp Compilation
vim.keymap.set("n", "<M-b>", function()
  local file = vim.fn.expand("%")
  local output = vim.fn.expand("%:r")
  vim.cmd("w") -- save file
  vim.cmd("botright split | terminal g++ " .. file .. " -o " .. output .. " && ./" .. output)
end, { desc = "Build and run current C++ file" })
