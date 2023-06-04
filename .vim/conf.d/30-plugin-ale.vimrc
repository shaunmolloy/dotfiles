" As-you-type autocomplete
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

nnoremap <C-d> :ALEGoToDefinition<CR>
nnoremap <C-h> :ALEDetail<CR>

" function! FixerPrettier(buffer) abort
"   return {
"         \  'command': 'cat '. buffer .' | prettierd'
"   \}
" endfunction
" execute ale#fix#registry#Add('prettierd', 'FixerPrettier', ['javascript'], 'prettierd for js ts')

"" ALE
let g:ale_fix_on_save = 0
let g:ale_linters_explicit = 1
let g:ale_lint_delay = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_filetype_changed = 0

" Preview window
set splitbelow

" Linting
" let g:ale_linter_aliases = {'js': ['javascript', 'typescript']}
let g:ale_linters = {
  \ 'graphql': [],
  \ 'javascript': ['prettierd', 'eslint'],
  \ 'typescript': ['tsserver', 'prettierd', 'eslint'],
  \ 'typescriptreact': ['tsserver', 'prettierd', 'eslint'],
  \ 'json': [],
  \ 'rust': ['analyzer'] }

" Fix linting issues
  " let g:ale_fixer_aliases = {'js': ['javascript', 'typescript']}
  "\ 'javascript': ['remove_trailing_lines', 'trim_whitespace', 'prettier', 'eslint'],
  "\ 'typescript': ['remove_trailing_lines', 'trim_whitespace', 'prettier', 'eslint'],
  "\ 'typescriptreact': ['remove_trailing_lines', 'trim_whitespace', 'prettier', 'eslint'],
let g:ale_fixers = {
  \ 'rust': ['rustfmt', 'remove_trailing_lines', 'trim_whitespace'] }
