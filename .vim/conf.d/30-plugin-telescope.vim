" Find files using Telescope command-line sugar.
nnoremap <C-f> <cmd>Telescope find_files<CR>
nnoremap <C-g> <cmd>Telescope live_grep<CR>
nnoremap <C-o> <cmd>Telescope buffers<CR>
" nnoremap <C-h> <cmd>Telescope help_tags<CR>

" <C-q> https://github.com/nvim-telescope/telescope.nvim/issues/814#issuecomment-1238510694

" TODO add shortcuts to navigate folders
" require('telescope').extensions.file_browser.file_browser({
"   cwd = "~/.vim/conf.d/",
" })

" NOTE: fd flag --no-ignore finds files excluded from .gitignore
lua << EOF
require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = { height = 0.95, width = 0.95 },
    mappings = {
      i = {
        ["<C-u>"] = false,
      }
    },
    file_ignore_patterns = {
      "build",
      ".git",
      "node_modules",
    },
  },
  pickers = {
    find_files = {
      find_command = {
        "fd",
        "--type", "f",
        "--color", "never",
        "--hidden",
      },
    }
  },
})
EOF
