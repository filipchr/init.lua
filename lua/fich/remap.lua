local nnoremap = require("fich.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>E<CR>")

nnoremap('[d', vim.diagnostic.goto_prev)
nnoremap(']d', vim.diagnostic.goto_next)
nnoremap('<leader>e', vim.diagnostic.open_float)
nnoremap('<leader>q', vim.diagnostic.setloclist)

