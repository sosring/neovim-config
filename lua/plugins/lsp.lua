local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Diagnostic display configuration
vim.diagnostic.config({
  virtual_text = false, -- shows error text inline at end of line
  signs = true, -- gutter signs (E, W, I, H)
  underline = true,
  update_in_insert = false,
  float = {
    border = "rounded",
    source = true, -- shows which LSP is reporting the error
  },
})

-- Show diagnostics in a float when hovering on the line
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

-- Show diagnostic float automatically when cursor rests on a line
vim.o.updatetime = 300 -- ms before CursorHold fires (default 4000 is too slow)

-- vim.api.nvim_create_autocmd("CursorHold", {
--   callback = function()
--     vim.diagnostic.open_float(nil, { focus = false })
--   end,
-- })

return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- C++
      vim.lsp.config("clangd", {
        cmd = { "clangd", "--compile-commands-dir=." },
        capabilities = capabilities,
      })

      -- Lua
      vim.lsp.config("lua_ls", {
        cmd = { "lua-language-server" },
        capabilities = capabilities,
      })

      -- C#
      vim.lsp.config("omnisharp", {
        cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
        capabilities = capabilities,
        root_dir = vim.loop.cwd,
      })

      -- Enable the servers
      vim.lsp.enable("clangd")
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("omnisharp") -- was missing
    end, -- was missing
  },
  {
    "williamboman/mason.nvim",
    config = true,
  },
}
