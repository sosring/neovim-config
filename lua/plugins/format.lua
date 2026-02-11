return {
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = function(bufnr)
        return {
          timeout_ms = 500,
          lsp_fallback = true,
        }
      end,

      formatters_by_ft = {
        -- C / C++
        c = { "clang_format" },
        cpp = { "clang_format" },

        -- Lua
        lua = { "stylua" },

        -- Add new languages here 👇
        -- python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        -- go = { "gofmt" },
      },
    },
  },
}
