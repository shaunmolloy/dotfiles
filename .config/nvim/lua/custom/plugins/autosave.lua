local api = vim.api

local auto_save = function()
  if vim.fn.win_gettype() == '' then
    vim.cmd("silent! update")
  end
end

local group = api.nvim_create_augroup("AutoSave", { clear = true })

api.nvim_create_autocmd("InsertLeave", { callback = auto_save, group = group })
api.nvim_create_autocmd("TextChanged", { callback = auto_save, group = group })

return {}
