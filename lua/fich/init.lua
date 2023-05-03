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


vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.b.ale_javascript_eslint_executable = 'eslint_d'
vim.b.ale_javascript_eslint_use_global = 1

-- vim.b.ale_fixers = {
--     'javascript': ['prettier', 'eslint'],
-- };
