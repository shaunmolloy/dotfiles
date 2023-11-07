local map = vim.api.nvim_set_keymap

map('n', ',', '@@', { desc = 'Run last macro' })

map('n', '<C-j>', ':m .+1<CR>==', { desc = 'Move line down' })
map('i', '<C-j>', '<Esc>:m .+1<CR>==gi', { desc = 'Move line down' })

map('n', '<C-k>', ':m .-2<CR>==', { desc = 'Move line up' })
map('i', '<C-k>', '<Esc>:m .-2<CR>==gi', { desc = 'Move line up' })

return {}
