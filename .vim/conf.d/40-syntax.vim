" Syntax selector
function! SyntaxSelectorHelper(command)
  exec 'set syntax='.a:command
endfunction
function! SyntaxSelector()
  let l:options = [
    \ "vim",
    \ "typescriptreact",
    \ "typescript",
    \ "sql",
    \ "sh",
    \ "react",
    \ "markdown",
    \ "json",
    \ "javascript",
    \ "html",
    \ "graphql",
    \ "dbml",
    \ "css",
  \ ]
"   return v:lua.require('telescope.builtin').find_files({ mappings = function(_, map)
"     \ map("n", "<cr>", l:options)
"     \ map("i", "<cr>", l:options) })
   return fzf#vim#files('', {
     \ 'source': l:options,
     \ 'sink': function('SyntaxSelectorHelper') })
endfunction
nnoremap <silent> ,m :call SyntaxSelector()<CR>
