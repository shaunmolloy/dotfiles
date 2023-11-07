local map = vim.api.nvim_set_keymap

map('n', '<C-n>', ':enew<CR>', { desc = 'Create new buffer' })
map('n', '<C-s>', ':w<CR>', { desc = 'Save buffer' })

map('n', '<C-Right>', ':bn<CR>', { desc = 'Go to next buffer' })
map('n', '<C-Left>', ':bp<CR>', { desc = 'Go to previous buffer' })

map('n', '<A-w>', ':bd<CR><Esc>', { desc = 'Close buffer' })
map('n', '<S-w>', ':bd!<CR><Esc>', { desc = 'Force close buffer' })

map('n', '<A-Right>', ':cn<CR>', { desc = 'Go to next count' })
map('n', '<A-Left>', ':cp<CR>', { desc = 'Go to previous count' })

map('n', '<C-q>', ':q<CR>', { desc = 'Quit' })
map('n', '<C-q><C-q>', ':q!<CR>', { desc = 'Force quit' })

map('n', '<C-Down>', ':edit #<CR>', { desc = 'Edit previous file' })

return {}
