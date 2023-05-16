require("fich.set")
require("fich.packer")
require("fich.keymap")
require("fich.remap")

local augroup = vim.api.nvim_create_augroup
FichGroup = augroup('Fich', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = FichGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

