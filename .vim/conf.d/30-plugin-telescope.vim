" Find files using Telescope command-line sugar.
nnoremap <C-f> <cmd>Telescope find_files<CR>
nnoremap <C-g> <cmd>Telescope live_grep<CR>
nnoremap <C-o> <cmd>Telescope buffers<CR>
nnoremap <C-h> <cmd>Telescope help_tags<CR>

" <C-q> https://github.com/nvim-telescope/telescope.nvim/issues/814#issuecomment-1238510694

" TODO add shortcuts to navigate folders
" require('telescope').extensions.file_browser.file_browser({
"   cwd = "~/.vim/conf.d/",
" })

lua << EOF
require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = { height = 0.95, width = 0.95 },
    dynamic_preview_title = true,
    mappings = {
      i = {
        ["<ESC>"] = require('telescope.actions').close,
        ["<C-q>"] = require('telescope.actions').close,
        ["<C-u>"] = false,
        ['<C-d>'] = require('telescope.actions').delete_buffer
      }
    },
    file_ignore_patterns = {
      "build/",
      ".git/",
      "node_modules/",
      "storage/",
      "vendor/",
      "web/cpresources",
    },
  },
  pickers = {
    find_files = {
      find_command = {
        "fd",
        "--type", "f",
        "--color", "never",
        "--hidden",
        "--no-ignore",
      },
    },
    buffers = {
      ignore_current_buffer = true,
      sort_lastused = true,
    },
  },
})
EOF
