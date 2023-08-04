-- local map = vim.api.nvim_set_keymap
-- 
-- local toggle_folding = function()
--   if vim.o.foldenable == true then
--     vim.o.foldmethod='indent'
--     vim.o.nofoldenable = true
--   else
--     vim.o.foldenable = true
--   end
--   return ''
-- end
-- 
-- map('n', '.f', toggle_folding, { desc = 'Toggle folding' })

-- Workaround to disable folding
vim.cmd([[
  autocmd BufWritePost,BufEnter * set nofoldenable foldmethod=manual foldlevelstart=99
]])

return {}
