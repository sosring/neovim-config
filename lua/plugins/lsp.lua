return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- C++
      vim.lsp.config("clangd", {
        cmd = { "clangd" },
        capabilities = capabilities,
      })

      -- Lua
      vim.lsp.config("lua_ls", {
        cmd = { "lua-language-server" },
        capabilities = capabilities,
      })

      vim.lsp.enable("clangd")
      vim.lsp.enable("lua_ls")
    end,
  },
  {
    "williamboman/mason.nvim",
    config = true,
  },
}
