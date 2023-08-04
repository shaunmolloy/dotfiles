local old_is_focused = require'lualine.utils.utils'.is_focused

require('lualine.utils.utils').is_focused = function()
  if _G.ForceLualineFocus ~= nil then
    return _G.ForceLualineFocus
  end
  return old_is_focused()
end

vim.cmd([[
  augroup FocusChange
  autocmd!
  autocmd FocusGained * :lua ForceLualineFocus = nil
  autocmd FocusLost * :lua ForceLualineFocus = false
  augroup END
]])

-- vim.cmd([[
--   if has_key(environ(), 'TMUX')
--     augroup TmuxStatus
--       autocmd VimResume,VimEnter   * call system('tmux set status off')
--       autocmd VimLeave,VimSuspend  * call system('tmux set status on')
--     augroup END
--   endif
-- ]])

return {}
