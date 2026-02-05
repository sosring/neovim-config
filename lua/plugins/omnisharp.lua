-- Formatting Rules
return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.config("omnisharp", {
            cmd = { "omnisharp" },
            filetypes = { "cs" },
            root_markers = { "*.sln", "*.csproj", ".git" },

            settings = {
                FormattingOptions = {
                    EnableEditorConfigSupport = true,
                    OrganizeImports = true,
                },
                RoslynExtensionsOptions = {
                    EnableAnalyzersSupport = true,
                    EnableImportCompletion = true,
                },
            },
        })

        vim.lsp.enable("omnisharp")
    end,
}
