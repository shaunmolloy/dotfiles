local api = vim.api
local autocmd = api.nvim_create_autocmd

autocmd( { "BufNewFile", "BufRead" }, { pattern = { "*.dbml" }, command = [[ set syntax=dbml ]] } )
autocmd( { "BufNewFile", "BufRead" }, { pattern = { "*.i3config" }, command = [[ set syntax=i3config ]] } )
autocmd( { "BufNewFile", "BufRead" }, { pattern = { "*.json" }, command = [[ set syntax=json ]] } )
autocmd( { "BufNewFile", "BufRead" }, { pattern = { "*.js" }, command = [[ set syntax=typescriptreact ]] } )
autocmd( { "BufNewFile", "BufRead" }, { pattern = { "nginx.conf" }, command = [[ set syntax=nginx ]] } )
autocmd( { "BufNewFile", "BufRead" }, { pattern = { "default.conf" }, command = [[ set syntax=nginx ]] } )
autocmd( { "BufNewFile", "BufRead" }, { pattern = { "*.rs" }, command = [[ set syntax=rust ]] } )
autocmd( { "BufNewFile", "BufRead" }, { pattern = { "*.ts" }, command = [[ set syntax=typescript ]] } )
autocmd( { "BufNewFile", "BufRead" }, { pattern = { "*.vtl" }, command = [[ set syntax=json ]] } )

vim.cmd([[
  " Word wrap
  highlight ColorColumn ctermbg=lightgrey guibg=black
  autocmd FileType gitcommit set colorcolumn=50,72
  autocmd FileType javascript set colorcolumn=120
  autocmd FileType typescript set colorcolumn=120
  autocmd FileType markdown set colorcolumn=120

  " Wrap in diff
  autocmd FilterWritePre * if &diff | setlocal wrap< | endif
]])

-- TODO finish
-- local SyntaxSelectorHelper = function(command)
--   vim.api.nvim_exec2('set syntax=' .. command)
-- end

-- local SyntaxSelector = function()
--   local options = {
--     "css",
--     "dbml",
--     "graphql",
--     "html",
--     "javascript",
--     "json",
--     "lua",
--     "markdown",
--     "nginx",
--     "react",
--     "rust",
--     "sh",
--     "sql",
--     "typescript",
--     "typescriptreact",
--     "vim",
--   }
--   --return api.nvim_call_function('fzf#vim#files("", { "source": options, "sink": function("SyntaxSelectorHelper") })')
--   -- pass custom sink to nvim telescope find
--   return require('telescope.builtin').fd()
-- end
-- 
-- vim.keymap.set('n', ',m', SyntaxSelector, { desc = 'Select syntax' })

return {}
