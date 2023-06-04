" Find files using Telescope command-line sugar.
nnoremap <C-f> <cmd>Telescope find_files<CR>
nnoremap <C-g> <cmd>Telescope live_grep<CR>
nnoremap <C-o> <cmd>Telescope buffers<CR>
" nnoremap <C-h> <cmd>Telescope help_tags<CR>

" <C-q> https://github.com/nvim-telescope/telescope.nvim/issues/814#issuecomment-1238510694

lua << EOF
require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = { height = 0.95, width = 0.95 },
    mappings = {
      i = {
        ["<C-u>"] = false,
      }
    }
  },
  pickers = {
    find_files = {
      find_command = { "fd", "--type", "f", "--color", "never", "--no-ignore", "--hidden", "--exclude", "node_modules" },
    }
  }
})
EOF
