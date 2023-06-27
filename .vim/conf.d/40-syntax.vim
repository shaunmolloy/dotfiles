" Syntax selector
function! SyntaxSelectorHelper(command)
  exec 'set syntax='.a:command
endfunction
function! SyntaxSelector()
  let l:options = [
    \ "css",
    \ "dbml",
    \ "graphql",
    \ "html",
    \ "javascript",
    \ "json",
    \ "lua",
    \ "markdown",
    \ "nginx",
    \ "react",
    \ "rust",
    \ "sh",
    \ "sql",
    \ "typescript",
    \ "typescriptreact",
    \ "vim",
  \ ]
"   return v:lua.require('telescope.builtin').find_files({ mappings = function(_, map)
"     \ map("n", "<cr>", l:options)
"     \ map("i", "<cr>", l:options) })
   return fzf#vim#files('', {
     \ 'source': l:options,
     \ 'sink': function('SyntaxSelectorHelper') })
endfunction
nnoremap <silent> ,m :call SyntaxSelector()<CR>
