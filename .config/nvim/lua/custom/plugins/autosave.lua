local api = vim.api

-- local notify = require("notify")
-- notify("Window type" .. vim.fn.win_gettype(), "info")

local auto_save = function()
  if vim.fn.win_gettype() == '' then
    vim.cmd("silent! update")
  end
end

local group = api.nvim_create_augroup("AutoSave", { clear = true })

api.nvim_create_autocmd("InsertLeave", { callback = auto_save, group = group })
api.nvim_create_autocmd("TextChanged", { callback = auto_save, group = group })

vim.cmd([[
  " trigger `autoread` when files changes on disk
  set autoread
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif

  " notification after file change
  autocmd FileChangedShellPost *
    \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
]])

return {}
