vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<M-m>", ":ZenMode<CR>", { desc = "Toggle Zen Mode" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Toggle Zen Mode" })

-- Split Window
vim.keymap.set("n", "vp", function()
  vim.cmd("vsplit")
  vim.cmd("wincmd l")
end, { desc = "Vertical split" })

vim.keymap.set("n", "sp", function()
  vim.cmd("split")
  vim.cmd("wincmd j")
end, { desc = "Horizontal split" })

vim.keymap.set("n", "<Tab>", "<C-w>w", { silent = true })
-- vim.keymap.set("n", "<S-Tab>", "<C-w>W", { silent = true })

vim.keymap.set("n", "<leader>cg", "<cmd>CMakeGenerate<CR>", { desc = "CMake Generate" })
vim.keymap.set("n", "<leader>cb", "<cmd>CMakeBuild<CR>", { desc = "CMake Build" })
vim.keymap.set("n", "<leader>cr", "<cmd>CMakeRun<CR>", { desc = "CMake Run" })
