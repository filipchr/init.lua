local Remap = require("fich.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>n", ":NvimTreeToggle<cr>")
nnoremap("<leader>nf", ":NvimTreeFocus<cr>")
nnoremap("<leader>nc", ":NvimTreeCollapse<cr>")
