" Update every 100ms
set updatetime=100

"" Git gutter
let g:gitgutter_git_executable = '/usr/bin/git'
" let g:gitgutter_async=0

" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

" background
let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=bg
highlight SignColumn ctermbg=bg

" Jump between hunks
nnoremap Gn <Plug>GitGutterNextHunk  " git next
nnoremap Gp <Plug>GitGutterPrevHunk  " git previous

" Hunk-add and hunk-revert for chunk staging
nnoremap Ga <Plug>GitGutterStageHunk  " git add (chunk)
nnoremap Gu <Plug>GitGutterUndoHunk   " git undo (chunk)

" Git fzf files
nnoremap Gf :!git-fzf
