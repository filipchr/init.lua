-- [[ Configure Telescope ]]
require('telescope').setup {}

pcall(require('telescope').load_extension, 'fzf')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 0,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>pf', builtin.find_files,  { desc = '[P]roject [F]iles' })
vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = '[P]project [H]elp' })
vim.keymap.set('n', '<leader>pw', function ()
    require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end, { desc = '[P]roject current [W]ord' })

vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = '[P]roject by [G]rep' })
vim.keymap.set('n', '<leader>pd', builtin.diagnostics, { desc = '[P]roject [D]iagnostics' })
vim.keymap.set('n', '<leader>ps', function ()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
