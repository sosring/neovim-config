return {
  "brenoprata10/nvim-highlight-colors",
  config = function()
    require("nvim-highlight-colors").setup({
      render = "foreground",
      enable_named_colors = false,
      enable_rgb = true,
      enable_hex = true,
      custom_colors = {
        { label = "%((%d?%.?%d+f?),%s*(%d?%.?%d+f?),%s*(%d?%.?%d+f?),%s*(%d?%.?%d+f?)%)" },
      },
      filetypes = { "c", "cpp", "glsl", "vert", "frag" },
    })
  end,
}
