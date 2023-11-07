local map = vim.api.nvim_set_keymap

local cmd = ':exec "cd" fnameescape(fnamemodify(finddir(".git", escape(expand("%:p:h"), " ") . ";"), ":h"))<CR>'

map('n', '..', cmd, { desc = 'Change dir to git root' })

return {}
