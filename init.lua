require("config.options")
require("config.keybinds")
require("config.lazy")
require("config.autocmd")

-- Commands to use system clipboard
vim.opt.clipboard = "unnamedplus"

vim.filetype.add({
  extension = {
    vs = "glsl",
    fs = "glsl",
    gs = "glsl",
    vert = "glsl",
    frag = "glsl",
  },
})
