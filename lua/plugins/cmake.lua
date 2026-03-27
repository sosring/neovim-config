return {
  "Civitasv/cmake-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("cmake-tools").setup({
      cmake_executor = {
        name = "quickfix",
      },
      cmake_runner = {
        name = "toggleterm",
        opts = {
          cwd = vim.fn.getcwd(),
        },
      },
      cmake_generate_options = {
        "-DCMAKE_EXPORT_COMPILE_COMMANDS=1",
      },
      cmake_build_directory = "build",
    })
  end,
}
