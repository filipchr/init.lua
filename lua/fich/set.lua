vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.wo.number = true
vim.opt.relativenumber = true
vim.o.breakindent = true
vim.wo.signcolumn = 'yes'
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
vim.opt.nu = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.wrap = false
vim.g.mapleader = " "
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.cmdheight = 1

vim.opt.updatetime = 250
vim.opt.shortmess:append("c")

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

