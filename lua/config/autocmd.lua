local function sync_cmake()
  local cwd = vim.fn.getcwd()
  vim.loop.chdir(cwd) -- keep libuv in sync

  if vim.fn.filereadable(cwd .. "/CMakeLists.txt") == 1 then
    require("cmake-tools").setup({
      cmake_executor = { name = "quickfix" },
      cmake_runner = { name = "quickfix" },
      cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
      cmake_build_directory = "build",
    })
  end
end

-- startup.nvim / manual :cd
vim.api.nvim_create_autocmd("DirChanged", { callback = sync_cmake })

-- nvim-tree root change
vim.api.nvim_create_autocmd("User", { pattern = "NvimTreeSetRootDir", callback = sync_cmake })
