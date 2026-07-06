-- Leader
vim.g.mapleader = " "

-- Shortcuts helper
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- File explorer
-- map("n", "<leader>cd", vim.cmd.Ex, { desc = "Open file explorer" })

-- Zen mode
map("n", "<M-m>", "<Cmd>ZenMode<CR>", { desc = "Toggle Zen Mode" })
map("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- Split Window
-- map("n", "vp", function()
--   vim.cmd("vsplit")
--   vim.cmd("wincmd l")
-- end, { desc = "Vertical split" })
--
-- map("n", "sp", function()
--   vim.cmd("split")
--   vim.cmd("wincmd j")
-- end, { desc = "Horizontal split" })

-- Window navigation
map("n", "<Tab>", "<C-w>w", { desc = "Next window" })
map("n", "<S-Tab>", "<C-w>W", { desc = "Previous window" })

-- CMake
map("n", "<leader>cg", "<cmd>CMakeGenerate<CR>", { desc = "CMake Generate" })
map("n", "<D-b>", "<cmd>CMakeBuild<CR>", { desc = "CMake Build" })
map("n", "<D-r>", "<cmd>CMakeRun<CR>", { desc = "CMake Run" })

-- Barbar buffer navigation

-- Mac-style (Cmd)
-- map("n", "<D-[>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
-- map("n", "<D-]>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })

-- Fallback (Alt) for terminal compatibility
map("n", "<A-[>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer (alt)" })
map("n", "<A-]>", "<Cmd>BufferNext<CR>", { desc = "Next buffer (alt)" })

-- Close buffer
map("n", "<A-w>", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })

-- Tab New
-- map("n", "<D-t>", "<Cmd>tabnew<CR>", { desc = "New Tab" })

map("n", "<C-1>", "<Cmd>BufferGoto 1<CR>")
map("n", "<C-2>", "<Cmd>BufferGoto 2<CR>")
map("n", "<C-3>", "<Cmd>BufferGoto 3<CR>")
map("n", "<C-4>", "<Cmd>BufferGoto 4<CR>")
map("n", "<C-5>", "<Cmd>BufferGoto 5<CR>")
map("n", "<C-6>", "<Cmd>BufferGoto 6<CR>")
map("n", "<C-7>", "<Cmd>BufferGoto 7<CR>")
map("n", "<C-8>", "<Cmd>BufferGoto 8<CR>")
map("n", "<C-9>", "<Cmd>BufferGoto 9<CR>")

map("n", "<D-s>", "<Cmd>:w <CR>")
